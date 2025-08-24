package com.ecm.session_based;

import java.io.IOException;

import com.ecm.util.RedisProperties;
import lombok.Getter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;


//import redis.clients.jedis.Jedis;

public class RedisConnectionManager {
    private static final Logger logger = LoggerFactory.getLogger(RedisConnectionManager.class.getName());
    @Getter
    private static JedisPool pool;
    private RedisConnectionManager() {
    }

    static {
        try {
            RedisProperties props = RedisProperties.instance;
            JedisPoolConfig config = new JedisPoolConfig();
            String host = props.getProperties().getProperty("redis.host", "localhost");
            String port = props.getProperties().getProperty("redis.port", "6379"); // port mặc định của Redis là 6379
            String timeout = props.getProperties().getProperty("redis.timeout", "2000"); // timeout là thời gian chờ kết
            String maxTotal = props.getProperties().getProperty("redis.maxTotal", "20"); // maxTotal là số kết nối tối
            String maxIdle = props.getProperties().getProperty("redis.maxIdle", "10"); // maxIdle là số kết nối tối đa
            String password = props.getProperties().getProperty("redis.password", ""); // Mật khẩu nếu có
            config.setMaxTotal(Integer.parseInt(maxTotal));
            config.setMaxIdle(Integer.parseInt(maxIdle));

            if (password == null || password.isEmpty()) {
                pool = new JedisPool(config, host, Integer.parseInt(port), Integer.parseInt(timeout));
            } else {
                pool = new JedisPool(config, host, Integer.parseInt(port), Integer.parseInt(timeout), password);
            }
            logger.info("Redis pool initialized: " + host + ":" + port);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
