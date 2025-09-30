package com.ecm.features.user.auth;

import com.ecm.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAuthService {
    void handleLoginSuccess(HttpServletRequest request,
                            HttpServletResponse response,
                            User user,
                            boolean rememberMe);
}
