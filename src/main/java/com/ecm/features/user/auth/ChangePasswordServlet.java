package com.ecm.features.user.auth;

import com.ecm.util.GlobalUtil;
import jdk.nashorn.internal.objects.Global;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/password/change")
public class ChangePasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final Logger logger = LoggerFactory.getLogger(ChangePasswordServlet.class);

    private IChangePasswordService changePasswordService;

//    Servlet container (Tomcat, Jetty, …) sẽ tự động khởi tạo servlet bằng reflection và luôn dùng constructor mặc định (không tham số).
//    public ChangePasswordServlet(IChangePasswordService changePasswordService) {
//        this.changePasswordService = changePasswordService;
//    }

    @Override
    public void init() throws ServletException {
        super.init();
        this.changePasswordService = new ChangePasswordService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        req.getRequestDispatcher("/views/auth/password-change.jsp").forward(req, resp);
    }

    // Implement doPost method to handle password change requests
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        String email = req.getParameter("email");
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");

        String error = null;
        String success = null;

        try {
            boolean changed = changePasswordService.changePassword(email, oldPassword, newPassword);
            if (changed) {
                success = "Password changed successfully!";
            } else {
                error = "Failed to change password! Please check again!";
            }
        } catch (IllegalArgumentException e) {
            error = e.getMessage();
        } catch (Exception e) {
            error = "An unexpected error occurred. Please try again later.";
            logger.error("Error changing password for email: {}", email, e);
        }

        if (error != null) {
            req.setAttribute("error", error);
        }
        if (success != null) {
            req.setAttribute("success", success);
        }
        req.getRequestDispatcher("/views/auth/password-change.jsp").forward(req, resp);
    }
}
