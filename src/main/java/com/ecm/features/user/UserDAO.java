package com.ecm.features.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ecm.model.User;
import com.ecm.util.DBUtil;

public class UserDAO {
    private final Logger logger = LoggerFactory.getLogger(UserDAO.class);

    public boolean isEmailExists(String email) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtil.getInstance().getConnection();
            ps = conn.prepareStatement("SELECT 1 FROM users WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            logger.error("Error checking email existence: {}", email, e);
            return true;
        } finally {
            try {
                if (ps != null)
                    ps.close();
            } catch (SQLException e) {
                logger.error("Error closing PreparedStatement", e);
            }
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                logger.error("Error closing Connection", e);
            }
        }
    }

    public boolean createUser(User user) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtil.getInstance().getConnection();
            ps = conn.prepareStatement(
                    "INSERT INTO users (full_name, email, password_hash, phone_number, role) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, user.getFullName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPasswordHash());
            ps.setString(4, user.getPhoneNumber());
            ps.setString(5, user.getRole());
            return ps.executeUpdate() == 1;
        } catch (Exception e) {
            logger.error("Error creating user with email: {}", user.getEmail(), e);
            return false;
        } finally {
            try {
                if (ps != null)
                    ps.close();
            } catch (SQLException e) {
                logger.error("Error closing PreparedStatement", e);
            }
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                logger.error("Error closing Connection", e);
            }
        }
    }

    public User getUserByEmail(String email) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtil.getInstance().getConnection();
            ps = conn.prepareStatement("SELECT * FROM users WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setFullName(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
                user.setPasswordHash(rs.getString("password_hash"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setRole(rs.getString("role"));
                return user;
            }
            logger.info("No user found with email: {}", email);
        } catch (SQLException e) {
            logger.error("Error fetching user by email: {}", email, e);
        }
        return null;
    }
}
