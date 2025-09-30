package com.ecm.features.user;

import com.ecm.model.User;

public interface IUserService {
    User findByGoogleId(String googleId);
}
