package com.ecm.features.user.auth;

import com.ecm.features.user.IUserService;

public interface ILoginService extends IAuthService {
    boolean validateCredentials(String email, String password);
}
