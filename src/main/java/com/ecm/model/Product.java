package com.ecm.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class Product {
    private Integer productId;
    private String name;
    private String description;
    private String brand;
    private Integer categoryId;
    private String status;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Product() {
    }

    public static Product fromResultSet(ResultSet rs) throws SQLException {
        Product p = new Product();
        p.productId = rs.getInt("product_id");
        p.name = rs.getString("name");
        p.description = rs.getString("description");
        p.brand = rs.getString("brand");
        p.categoryId = (Integer) rs.getObject("category_id");
        p.status = rs.getString("status");
        p.createdAt = rs.getObject("created_at", LocalDateTime.class);
        p.updatedAt = rs.getObject("updated_at", LocalDateTime.class);
        return p;
    }
}
