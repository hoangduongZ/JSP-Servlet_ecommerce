package com.ecm.session_based;

import javax.servlet.annotation.WebFilter;
import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

;

@WebFilter("/*")
public class AuthFilter implements Filter {
    private SessionManager sessionManager;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        sessionManager = new SessionManager(RedisConnectionManager.getPool());
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        String path = req.getRequestURI();
        if (isPublicPath(path)) {
            chain.doFilter(req, resp);
            return;
        }

        String sessionId = getSessionIdFromCookies(req.getCookies());

        if (sessionId != null) {
            String userId = sessionManager.getUserId(sessionId);
            if (userId != null) {
                req.setAttribute("userId", userId);
                chain.doFilter(req, resp);
                return;
            }
        }
        resp.sendRedirect("/login");
    }

    private boolean isPublicPath(String path) {
        return path.endsWith("/login") || path.endsWith("/register")
                || path.endsWith("/") || path.contains("/home")
                || path.contains("/css/") || path.contains("/js/") || path.contains("/assets/");
    }

    private String getSessionIdFromCookies(Cookie[] cookies) {
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("SESSION_ID".equals(c.getName())) {
                    return c.getValue();
                }
            }
        }
        return null;
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
