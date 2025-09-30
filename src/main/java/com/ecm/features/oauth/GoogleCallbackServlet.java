package com.ecm.features.oauth;

import com.ecm.exception.EcmException;
import com.ecm.features.user.UserService;
import com.ecm.features.user.auth.ILoginService;
import com.ecm.features.user.auth.LoginService;
import com.ecm.model.User;
import com.ecm.session_based.RedisLoadProperties;
import com.ecm.session_based.RedisSessionManager;
import com.ecm.session_based.RememberMeManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/auth/google/callback")
public class GoogleCallbackServlet extends HttpServlet {
    private final UserService userService = new UserService();
    private final Logger logger = LoggerFactory.getLogger(GoogleCallbackServlet.class);
    private final RedisSessionManager sessionManager = new RedisSessionManager(RedisLoadProperties.getPool());
    private final RememberMeManager rememberMeManager = new RememberMeManager(RedisLoadProperties.getPool());
    private final ILoginService loginService = new LoginService(sessionManager, rememberMeManager);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp)
            throws ServletException, IOException {
        try{
            HttpSession session = request.getSession();

            // Kiểm tra state
            String state = request.getParameter("state");
            String sessionState = (String) session.getAttribute("oauth_state");
            if (!state.equals(sessionState)) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid state");
                return;
            }

            // Lấy authorization code
            String code = request.getParameter("code");
            if (code == null) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing code");
                return;
            }

            GoogleTokenUtil.TokenResponse tokenResponse = GoogleTokenUtil.exchangeCodeForTokens(code);

            // Lấy thông tin user
            GoogleTokenUtil.GoogleUserInfo userInfo = GoogleTokenUtil.getUserInfo(tokenResponse.accessToken);

            // Xử lý user
            User user = processUser(userInfo, tokenResponse);

            // Tạo JWT
//            String jwtToken = JWTUtil.createToken(user.getGoogleId(), user.getEmail());

            // Lưu session
            loginService.handleLoginSuccess(request, resp, user,
                    request.getParameter("rememberMe") != null);

            String rememberMe = request.getParameter("rememberMe");
            if (rememberMe != null) {
                rememberMeManager.createRememberMe(String.valueOf(user.getUserId()), resp);
            }

//            session.setAttribute("user", user);
//            session.setAttribute("jwt_token", jwtToken);
            session.removeAttribute("oauth_state");  // clear state after use to prevent replay attacks
            resp.sendRedirect("/admin/dashboard");
        }catch (EcmException e){
            logger.error("Google OAuth callback error: {}", e.getMessage());
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Authentication failed");
        }
    }

    private User processUser(GoogleTokenUtil.GoogleUserInfo userInfo, GoogleTokenUtil.TokenResponse tokens) {
        User user = userService.findByGoogleId(userInfo.sub);

        if (user == null) {
            user = new User();
            user.setGoogleId(userInfo.sub);
            user.setEmail(userInfo.email);
            user.setFullName(userInfo.name);
            user.setAvatarUrl(userInfo.picture);
            user = userService.registerUser(user);
        } else {
            // Cập nhật thông tin
            user.setAvatarUrl(userInfo.picture);
            userService.updateAvatar(user);
        }
        return user;
    }
}
