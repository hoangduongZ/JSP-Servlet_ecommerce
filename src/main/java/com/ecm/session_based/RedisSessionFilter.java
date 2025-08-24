package com.ecm.session_based;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

;

//@WebFilter("/*")
public class RedisSessionFilter implements Filter {
    private final RedisSessionManager sessionManager = new RedisSessionManager(RedisLoadProperties.getPool());
    private final RememberMeManager rememberMeManager = new RememberMeManager(RedisLoadProperties.getPool());
    private final int TIMEOUT = 30 * 60; // 30 minutes

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        String path = request.getRequestURI();
        if (isPublicPath(path)) {
            chain.doFilter(request, response);
            return;
        }

        Map<String, String> cookies = getSessionIdFromCookie(request);
        String sessionId = cookies.get("sessionId");
        String rememberMeToken = cookies.get("rememberMe");
        if (cookies.isEmpty() || sessionManager.getAttribute(sessionId, "userId") == null) {
            if (rememberMeToken != null) {
                String userId = rememberMeManager.validateRememberMe(rememberMeToken);
                if (userId != null) {
                    // tái tạo session từ remember me
                    sessionManager.createSession("userId", userId);
                    Cookie newSession = new Cookie("APP_SESSION", sessionId);
                    newSession.setHttpOnly(true);
                    newSession.setMaxAge(TIMEOUT);
                    newSession.setPath("/");
                    response.addCookie(newSession);
                }
            }
        }

        String userId = sessionManager.getAttribute(sessionId, "userId");
        if (userId != null) {
            req.setAttribute("userId", userId);
            chain.doFilter(request, response);
            return;
        }
        response.sendRedirect("/login");
    }

    private boolean isPublicPath(String path) {
        return path.endsWith("/login") || path.endsWith("/register")
                || path.endsWith("/") || path.contains("/home")
                || path.contains("/css/") || path.contains("/js/") || path.contains("/assets/");
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


    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}