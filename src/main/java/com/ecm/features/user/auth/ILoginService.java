package com.ecm.features.user;

public interface ILoginService extends IUserService {
    boolean validateCredentials(String email, String password);
}
