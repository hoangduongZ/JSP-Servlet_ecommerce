package com.ecm.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ProductImage {
    private Integer imageId;
    private Integer productId;
    private Integer variantId;
    private String imageUrl;
    private Boolean isPrimary;

}
