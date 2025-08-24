package com.ecm.util;

import com.ecm.session_based.RedisLoadProperties;
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
}
