package com.ecm.features.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ecm.exception.EcmException;
import com.ecm.model.User;
import com.ecm.util.AuthUtil;

public class LoginService implements ILoginService {
    private final UserDAO userDAO = new UserDAO();
    private final Logger logger = LoggerFactory.getLogger(LoginService.class);

    public boolean validateCredentials(String email, String password) {
        logger.info("Validating credentials for email: {}", email);
        try {
            User user = userDAO.getUserByEmail(email);
            if (user != null) {
                String hashedInputPassword = AuthUtil.hashPassword(password);
                return hashedInputPassword.equals(user.getPasswordHash());
            }
        } catch (EcmException e) {
            logger.error("Error validating credentials for email: {}", email, e);
        }
        return false;
    }
}
