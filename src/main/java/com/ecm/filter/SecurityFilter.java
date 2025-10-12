package com.ecm.filter;

import com.ecm.session_based.RedisLoadProperties;
import com.ecm.session_based.RedisSessionManager;
import com.ecm.session_based.RememberMeManager;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class SecurityFilter implements Filter {
    private final RedisSessionManager sessionManager = new RedisSessionManager(RedisLoadProperties.getPool());
    private final RememberMeManager rememberMeManager = new RememberMeManager(RedisLoadProperties.getPool());
    private final int TIMEOUT = 30 * 60; // 30 phút

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        String path = request.getRequestURI().substring(request.getContextPath().length());

        if (isPublicPath(path)) {
            chain.doFilter(request, response);
            return;
        }

        //  Lấy session/remember-me
        Map<String, String> cookies = getSessionIdFromCookie(request);
        String sessionId = cookies.get("sessionId");
        String rememberMeToken = cookies.get("rememberMe");

        String userId = sessionManager.getAttribute(sessionId, "userId");
        String role = sessionManager.getAttribute(sessionId, "role");

        //  Nếu chưa có session mà có rememberMe → tái tạo session
        if (userId == null && rememberMeToken != null) {
            userId = rememberMeManager.validateRememberMe(rememberMeToken);
            if (userId != null) {
                sessionManager.createSession("userId", userId);
                // bạn có thể lấy role từ DB ở đây nếu cần
                Cookie newSession = new Cookie("APP_SESSION", sessionId);
                newSession.setHttpOnly(true);
                newSession.setMaxAge(TIMEOUT);
                newSession.setPath("/");
                response.addCookie(newSession);
            }
        }

        // Nếu chưa đăng nhập, chuyển hướng đến /login (trừ khi đang ở chính /login)
        if (userId == null && !path.equals("/login")) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        // Kiểm tra phân quyền ADMIN cho khu vực /admin
        if (path.startsWith("/admin")) {
            if (!"ADMIN".equals(role)) {
                response.sendError(HttpServletResponse.SC_FORBIDDEN, "Admin only");
                return;
            }
        }

        // Gắn thông tin vào request
        if (userId != null) {
            request.setAttribute("userId", userId);
            request.setAttribute("role", role);
        }

        chain.doFilter(request, response);
    }

    private boolean isPublicPath(String path) {
        return path.equals("/login") || path.equals("/register") || path.equals("/")
                || path.startsWith("/home") || path.startsWith("/css/")
                || path.startsWith("/js/") || path.startsWith("/assets/")
                || path.startsWith("/auth/") || path.startsWith("/images/")
                || path.startsWith("/favicon");
    }

    private Map<String, String> getSessionIdFromCookie(HttpServletRequest request) {
        Map<String, String> result = new HashMap<>();
        if (request.getCookies() != null) {
            for (Cookie cookie : request.getCookies()) {
                if ("APP_SESSION".equals(cookie.getName())) {
                    result.put("sessionId", cookie.getValue());
                } else if ("REMEMBERME".equals(cookie.getName())) {
                    result.put("rememberMe", cookie.getValue());
                }
            }
        }
        return result;
    }
}
