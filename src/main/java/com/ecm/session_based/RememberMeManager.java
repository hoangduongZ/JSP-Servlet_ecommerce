package com.ecm.session_based;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

public class RememberMeManager {
    private static final String REMEMBER_PREFIX = "remember:";
    private static final int REMEMBER_EXPIRE_SECONDS = 7 * 24 * 60 * 60; // 7 ngày

    private final JedisPool pool;

    public RememberMeManager(JedisPool pool) {
        this.pool = pool;
    }

    public void createRememberMe(String userId, HttpServletResponse resp) {
        String token = UUID.randomUUID().toString();
        try (Jedis jedis = pool.getResource()) {
            jedis.setex(REMEMBER_PREFIX + token, REMEMBER_EXPIRE_SECONDS, userId);
        }
        Cookie cookie = new Cookie("REMEMBERME", token);
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        cookie.setMaxAge(REMEMBER_EXPIRE_SECONDS);
        resp.addCookie(cookie);
    }

    // Trả về userId nếu token hợp lệ, ngược lại trả về null
    public String validateRememberMe(String token) {
        try (Jedis jedis = pool.getResource()) {
            return jedis.get(REMEMBER_PREFIX + token);
        }
    }

    public void clearRememberMe(String token, HttpServletResponse resp) {
        try (Jedis jedis = pool.getResource()) {
            jedis.del(REMEMBER_PREFIX + token);
        }
        Cookie cookie = new Cookie("REMEMBERME", "");
        cookie.setMaxAge(0);
        cookie.setPath("/");
        resp.addCookie(cookie);
    }
}
