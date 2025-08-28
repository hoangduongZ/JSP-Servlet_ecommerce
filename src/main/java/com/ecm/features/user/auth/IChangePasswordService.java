package com.ecm.features.user.auth;

public interface IChangePasswordService {
    boolean changePassword(String email, String oldPassword, String newPassword);
}
