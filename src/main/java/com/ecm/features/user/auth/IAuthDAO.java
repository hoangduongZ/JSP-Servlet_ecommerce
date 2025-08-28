package com.ecm.features.user.auth;

public interface IAuthDAO {
    boolean changePassword(String username, String oldPassword, String newPassword);
}
