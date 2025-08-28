package com.ecm.features.user;

import com.ecm.features.user.dto.RegisterForm;
import com.ecm.model.User;
import com.ecm.util.AuthUtil;

public class UserService implements IUserService {
    private final UserDAO userDAO = new UserDAO();

    public UserService() {
    }   

    public boolean isEmailExists(String email) {
        return userDAO.isEmailExists(email);
    }

    public boolean isStrongPassword(String password) {
        return password != null && password.length() >= 6;
    }

    public boolean registerUser(RegisterForm form) {
        if (isEmailExists(form.getEmail()) || !isStrongPassword(form.getPassword())) return false;
        User user = new User();
        user.setFullName(form.getFullName());
        user.setEmail(form.getEmail());
        user.setPasswordHash(AuthUtil.hashPassword(form.getPassword()));
        user.setPhoneNumber(form.getPhone());
        user.setRole("USER");
        return userDAO.registerUser(user);
    }

    public User getUserByEmail(String email) {
        return userDAO.getUserByEmail(email);
    }

}
