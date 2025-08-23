package com.ecm.product;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class Product {
    private String name;
    private String imageUrl;
    private String code;
    private BigDecimal price;
}
