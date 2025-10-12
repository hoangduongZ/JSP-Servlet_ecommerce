package com.ecm.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class SqlManager {
    private static Properties queries = new Properties();

    static {
        try (InputStream in = SqlManager.class.getResourceAsStream("/sql.properties")) {
            queries.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String get(String key) {
        return queries.getProperty(key);
    }
}
