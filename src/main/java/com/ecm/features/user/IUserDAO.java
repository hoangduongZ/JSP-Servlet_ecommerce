package com.ecm.features.user;

import com.ecm.model.User;

public interface IUserDAO {
    boolean isEmailExists(String email);
    boolean registerUser(User user);
    User getUserByEmail(String email);
}
