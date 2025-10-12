package com.ecm.features.user.auth;

import com.ecm.features.user.UserDAO;
import com.ecm.session_based.RedisSessionManager;
import com.ecm.session_based.RememberMeManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ecm.exception.EcmException;
import com.ecm.model.User;
import com.ecm.util.AuthUtil;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

public class LoginService implements ILoginService, IAuthService {
    private final UserDAO userDAO;
    private final Logger logger;
    private final RedisSessionManager sessionManager;
    private final RememberMeManager rememberMeManager;
    public LoginService(RedisSessionManager sessionManager,
                        RememberMeManager rememberMeManager) {
        userDAO = new UserDAO();
        logger = LoggerFactory.getLogger(LoginService.class);
        this.sessionManager = sessionManager;
        this.rememberMeManager = rememberMeManager;
    }

    public boolean validateCredentials(String email, String password) {
        userDAO.isEmailExists(email); // To log email existence check
        logger.info("Validating credentials for email: {}", email);
        try {
            User user = userDAO.getUserByEmail(email);
            if (user != null) {
                String hashedInputPassword = AuthUtil.hashPassword(password);
                return hashedInputPassword.equals(user.getPasswordHash());
            }
        } catch (EcmException e) {
            logger.error("Error validating credentials for email: {}", email, e);
        }
        return false;
    }

    public void handleLoginSuccess(HttpServletRequest request,
                                   HttpServletResponse response,
                                   User user,
                                   boolean rememberMe) {
        Map<String, String> attributes = saveUserInSession(request, user);
        String sessionId = sessionManager.createSession(attributes);

        Cookie cookie = new Cookie("APP_SESSION", sessionId);
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        cookie.setMaxAge(30 * 60);
        response.addCookie(cookie);

        if (rememberMe) {
            rememberMeManager.createRememberMe(String.valueOf(user.getUserId()), response);
        }
    }

    private Map<String, String> saveUserInSession(HttpServletRequest req, User user) {
        Map<String, String> attributes = new HashMap<>();
        attributes.put("userId", String.valueOf(user.getUserId()));
        attributes.put("email", user.getEmail());
        attributes.put("role", user.getRole() == null ? "CUSTOMER" : user.getRole());
        sessionManager.createSession(attributes);
        return attributes;
    }
}
