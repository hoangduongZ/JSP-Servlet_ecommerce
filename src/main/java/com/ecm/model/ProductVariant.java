package com.ecm.model;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

@AllArgsConstructor
@Getter
@Setter
public class ProductVariant {
    private static final ObjectMapper objectMapper = new ObjectMapper();
    private Integer variantId;
    private Integer productId;
    private String sku;
    private String variantName;
    private BigDecimal price;
    private BigDecimal discountPrice;
    private Integer stockQuantity;
    private Map<String, Object> attributesJson; // hoặc String nếu raw JSON
    private Boolean isActive;

    public ProductVariant() {
    }

    public static ProductVariant fromResultSet(ResultSet rs) throws SQLException {
        ProductVariant v = new ProductVariant();
        v.variantId = rs.getInt("variant_id");
        v.productId = rs.getInt("product_id");
        v.sku = rs.getString("sku");
        v.variantName = rs.getString("variant_name");
        v.price = rs.getBigDecimal("price");
        v.discountPrice = rs.getBigDecimal("discount_price");
        v.stockQuantity = rs.getInt("stock_quantity");
        String json = rs.getString("attributes_json");
        if (json != null && !json.isEmpty()) {
            try {
                v.attributesJson = objectMapper.readValue(json, new TypeReference<Map<String, Object>>() {
                });
            } catch (Exception e) {
                throw new SQLException("Error parsing attributes_json", e);
            }
        }
        v.isActive = rs.getBoolean("is_active");
        return v;
    }
}
