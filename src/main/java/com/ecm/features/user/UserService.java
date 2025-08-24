package com.ecm.features.user;

import java.security.MessageDigest;

import com.ecm.features.user.dto.RegisterForm;
import com.ecm.model.User;

public class UserService {
    private final UserDAO userDAO = new UserDAO();

    public static void main(String[] args) {
        UserService userService = new UserService();
        System.out.println(userService.isEmailExists("admin@shop.com"));
    }

    public boolean isEmailExists(String email) {
        return userDAO.isEmailExists(email);
    }

    public boolean isStrongPassword(String password) {
        return password != null && password.length() >= 6;
    }

    public String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashed = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashed)
                sb.append(String.format("%02x", b));
            return sb.toString();
        } catch (Exception e) {
            return password;
        }
    }

    public boolean registerUser(RegisterForm form) {
        if (isEmailExists(form.getEmail()) || !isStrongPassword(form.getPassword())) return false;
        User user = new User();
        user.setFullName(form.getFullName());
        user.setEmail(form.getEmail());
        user.setPasswordHash(hashPassword(form.getPassword()));
        user.setPhoneNumber(form.getPhone());
        user.setRole("USER");
        return userDAO.createUser(user);
    }

}
