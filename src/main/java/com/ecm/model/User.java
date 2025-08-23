package com.ecm.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

public class User {
    private Integer userId;
    private String fullName;
    private String email;
    private String passwordHash;
    private String phoneNumber;
    private String role;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public User() {}

    public static User fromResultSet(ResultSet rs) throws SQLException {
        User u = new User();
        u.userId = rs.getInt("user_id");
        u.fullName = rs.getString("full_name");
        u.email = rs.getString("email");
        u.passwordHash = rs.getString("password_hash");
        u.phoneNumber = rs.getString("phone_number");
        u.role = rs.getString("role");
        u.createdAt = rs.getObject("created_at", LocalDateTime.class);
        u.updatedAt = rs.getObject("updated_at", LocalDateTime.class);
        return u;
    }
}
