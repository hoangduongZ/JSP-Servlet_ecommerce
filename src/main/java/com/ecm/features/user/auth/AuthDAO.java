package com.ecm.features.user.auth;

import com.ecm.features.user.IUserDAO;
import com.ecm.features.user.UserDAO;
import com.ecm.util.AuthUtil;
import com.ecm.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthDAO extends UserDAO implements IAuthDAO {
    private static final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(AuthDAO.class);
    private final static IUserDAO userDAO = new UserDAO();

    @Override
    public boolean changePassword(String email, String oldPassword, String newPassword) {
        logger.info("Changing password for email: {}", email);
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtil.getInstance().getConnection();
            ps = conn.prepareStatement("UPDATE users SET password_hash = ? WHERE email = ? AND password_hash = ?");
            String newPasswordHash= AuthUtil.hashPassword(newPassword); // Hash old password for comparison
            String oldPasswordHash= AuthUtil.hashPassword(newPassword); // Hash new password for storage
            ps.setString(1, newPassword); // Assume newPassword is already hashed
            ps.setString(2, email);
            ps.setString(3, oldPassword); // Assume oldPassword is already hashed
            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated == 1;
        } catch (Exception e) {
            logger.error("Error changing password for email: {}", email, e);
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
}
