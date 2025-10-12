package com.ecm.features.product;

import com.ecm.exception.EcmException;
import com.ecm.features.user.UserDAO;
import com.ecm.model.Product;
import com.ecm.util.DBUtil;
import com.ecm.util.SqlManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO {
    private final Logger logger = LoggerFactory.getLogger(UserDAO.class);

    public List<Product> findProducts(int offset, int limit, String keyword) {
        List<Product> products = new ArrayList<>();
        String sql = SqlManager.get("product.fetchingAndPaging");

        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DBUtil.getInstance().getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + keyword + "%");
            stmt.setInt(2, limit);
            stmt.setInt(3, offset);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Product p = new Product();
                    p.setProductId(rs.getInt("product_id"));
                    p.setName(rs.getString("name"));
                    p.setDescription(rs.getString("description"));
                    p.setBrand(rs.getString("brand"));
                    p.setCategoryId(rs.getInt("category_id"));
                    p.setStatus(rs.getString("status"));

                    Timestamp createdAt = rs.getTimestamp("created_at");
                    Timestamp updatedAt = rs.getTimestamp("updated_at");
                    p.setCreatedAt(createdAt != null ? createdAt.toLocalDateTime() : null);
                    p.setUpdatedAt(updatedAt != null ? updatedAt.toLocalDateTime() : null);

                    products.add(p);
                }
            }
        } catch (EcmException | SQLException e) {
            logger.error("Error checking email existence: {}", null, e);
        } finally {
            try {
                if (stmt != null)
                    stmt.close();
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
        return products;
    }

    public long countProducts(String keyword) throws SQLException {
        String sql = SqlManager.get("product.countByName");
        try (Connection conn = DBUtil.getInstance().getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, "%" + keyword + "%");
            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next() ? rs.getLong(1) : 0;
            }
        }
    }
}
