package com.ecm.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@AllArgsConstructor
@NoArgsConstructor@Getter@Setter
public class Reviews {
    private Integer reviewId;
    private Integer productId;
    private Integer userId;
    private Integer rating;
    private String comment;
    private LocalDateTime createdAt;
}
