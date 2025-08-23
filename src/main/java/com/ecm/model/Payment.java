package com.ecm.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Payment {
    private Integer paymentId;
    private Integer orderId;
    private String paymentMethod;
    private String paymentStatus;
    private LocalDateTime paidAt;
}
