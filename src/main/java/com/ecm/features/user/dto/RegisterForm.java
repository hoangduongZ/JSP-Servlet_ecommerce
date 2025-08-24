package com.ecm.features.user.dto;

import lombok.Data;

@Data
public class RegisterForm {
    private String fullName;
    private String email;
    private String password;
    private String phone;
}
