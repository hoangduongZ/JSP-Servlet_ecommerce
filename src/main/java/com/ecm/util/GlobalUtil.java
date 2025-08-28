package com.ecm.util;

import com.ecm.session_based.RedisSessionManager;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

public class GlobalUtil {
    private GlobalUtil() {
    }

    public static void clearListCookie(HttpServletResponse resp, String... cookieName) {
        for (String name : cookieName) {
            Cookie cookie = new Cookie(name, "");
            cookie.setMaxAge(0);
            resp.addCookie(cookie);
        }
    }

    public static void clearListSession(RedisSessionManager redisSessionManager, String... sessionId) {
        for (String id : sessionId) {
            redisSessionManager.invalidate(id);
        }
    }

    public static void checkNull(String message, Object... obj) {
        if (message == null) {
            message = "Argument must not be null";
        }
        for (Object o : obj) {
            if (o == null) {
                throw new IllegalArgumentException(message);
            }
        }
    }

    public static void checkString(String message, String... str) {
        if (message == null) {
            message = "String must not be null or empty";
        }
        for (String s : str) {
            if (s == null || s.trim().isEmpty()) {
                throw new IllegalArgumentException(message);
            }
        }
    }
}

