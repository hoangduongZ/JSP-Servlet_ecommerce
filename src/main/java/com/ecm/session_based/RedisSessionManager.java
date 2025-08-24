package com.ecm.session_based;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.UUID;

public class RedisSessionManager {
    private static final String PREFIX = "session:";
    private static final int EXPIRE_SECONDS = 1800; // 30 phút

    private final JedisPool jedisPool;

    public RedisSessionManager(JedisPool jedisPool) {
        this.jedisPool = jedisPool;
    }

    public String createSession(String name, String value) {
        String sessionId = UUID.randomUUID().toString();
        String redisKey = PREFIX + sessionId;
        try (Jedis jedis = jedisPool.getResource()) {
            jedis.hset(redisKey, name, value);
            jedis.expire(redisKey, EXPIRE_SECONDS);
        }
        return sessionId;
    }

    public void refreshSession(String sessionId) {
        try (Jedis jedis = jedisPool.getResource()) {
            jedis.expire(PREFIX + sessionId, EXPIRE_SECONDS);
        }
    }

    public String getAttribute(String sessionId, String name) {
        if (sessionId == null) return null;
        try (Jedis jedis = jedisPool.getResource()) {
            return jedis.hget(PREFIX + sessionId, name);
        }
    }

    public void setAttribute(String sessionId, String name, String value) {
        if (sessionId == null) return;
        try (Jedis jedis = jedisPool.getResource()) {
            jedis.hset(PREFIX + sessionId, name, value);
            jedis.expire(PREFIX + sessionId, EXPIRE_SECONDS);
        }
    }

    public void invalidate(String sessionId) {
        if (sessionId == null) return;
        try (Jedis jedis = jedisPool.getResource()) {
            jedis.del(PREFIX + sessionId);
        }
    }
}
