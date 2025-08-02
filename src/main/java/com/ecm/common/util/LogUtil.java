package com.ecm.common.util;

import com.ecm.common.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;

public class LogUtil {
    private static volatile LogUtil instance;

    public LogUtil() {
    }

    public static LogUtil getInstance() {
        if (instance == null) {
            synchronized (LogUtil.class) {
                if (instance == null) {
                    instance = new LogUtil();
                }
            }
        }
        return instance;
    }

    public void log(String action, String message, String level, Integer userId) {
        String sql = "INSERT INTO log (action, message, level, user_id) VALUES (?, ?, ?, ?)";
        LocalDateTime now = LocalDateTime.now();
        String logLine = String.format("[%s] [%-5s] [user=%s] [action=%s] %s",
                now, level.toUpperCase(), userId != null ? userId : "anonymous", action, message);
        System.out.println(logLine);

        try (Connection conn = DBUtil.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, action != null ? action : "");
            stmt.setString(2, message != null ? message : "");
            stmt.setString(3, level);
            stmt.setInt(4, userId != null ? userId : -1);
        } catch (SQLException e) {
            System.err.println("Failed to log to DB: " + e.getMessage());
        }
    }
}
