package com.ecm.features.user.auth;

import com.ecm.exception.EcmException;
import com.ecm.features.user.IUserDAO;
import com.ecm.features.user.UserDAO;
import com.ecm.util.GlobalUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ChangePasswordService implements IChangePasswordService {
    private final IUserDAO userDAO = new UserDAO();
    private final IAuthDAO authDAO = new AuthDAO();
    private final Logger logger = LoggerFactory.getLogger(ChangePasswordService.class);

    public boolean changePassword(String email, String oldPassword, String newPassword) {
        GlobalUtil.checkNull(null, email, oldPassword, newPassword);
        GlobalUtil.checkString(null, email, oldPassword, newPassword);
        if (!userDAO.isEmailExists(email)){
            logger.info("Email does not exist! Please check again!");// To log email existence check
            throw new IllegalArgumentException("Email does not exist! Please check again!");
        }
        logger.info("Changing password for email: {}", email);
        boolean status = authDAO.changePassword(email, oldPassword, newPassword);
        if (!status) {
            logger.info("Failed to change password for email: {}", email);
            throw new IllegalArgumentException("Failed to change password! Please check again!");
        }
        logger.info("Password changed successfully for email: {}", email);
        return true;
    }
}
