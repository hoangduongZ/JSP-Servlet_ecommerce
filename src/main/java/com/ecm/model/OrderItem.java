package com.ecm.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Map;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class OrderItem {
    private Integer orderItemId;
    private Integer orderId;
    private Integer variantId;
    private Integer quantity;
    private String productName;
    private String variantName;
    private BigDecimal variantPrice;
    private BigDecimal variantDiscountPrice;
    private Map<String, Object> variantAttributesJson;
    private BigDecimal price;
}
