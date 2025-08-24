package com.ecm.session_based;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.UUID;

public class SessionManager {
    private static final String PREFIX = "session:";
    private static final int EXPIRE_SECONDS = 1800; // 30 phút

    private final JedisPool jedisPool;

    public SessionManager(JedisPool jedisPool) {
        this.jedisPool = jedisPool;
    }

    public String createSession(String userId) {
        String sessionId = UUID.randomUUID().toString();
        try (Jedis jedis = jedisPool.getResource()) {
            jedis.setex(PREFIX + sessionId, EXPIRE_SECONDS, userId);
        }
        return sessionId;
    }

    public String getUserId(String sessionId) {
        try (Jedis jedis = jedisPool.getResource()) {
            return jedis.get(PREFIX + sessionId);
        }
    }

    public void invalidate(String sessionId) {
        try (Jedis jedis = jedisPool.getResource()) {
            jedis.del(PREFIX + sessionId);
        }
    }
}
