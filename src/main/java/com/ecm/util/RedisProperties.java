package com.ecm.util;

import java.io.IOException;
import java.util.Properties;

public class RedisProperties {
    public static RedisProperties instance = new RedisProperties();
    private static final String PROPERTIES_FILE = "system_global.properties";

    private RedisProperties() {
    }   

    public Properties getProperties() throws IOException {
        Properties props = new Properties();
        try {
            props.load(RedisProperties.class.getClassLoader().getResourceAsStream(PROPERTIES_FILE));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return props;
    }
}
