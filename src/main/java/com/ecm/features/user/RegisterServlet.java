package com.ecm.features.user;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecm.features.user.dto.RegisterForm;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final Logger logger = LoggerFactory.getLogger(RegisterServlet.class.getName());
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logger.info("Serving GET /register");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/auth/register.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            getServletContext().log("Error forwarding to register.jsp", e);
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to process request.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        RegisterForm form = new RegisterForm();
        form.setEmail(req.getParameter("email"));
        form.setFullName(req.getParameter("fullName"));
        form.setPassword(req.getParameter("password"));
        form.setPhone(req.getParameter("phone"));

        String error = null;
        String success = null;

        if (userService.isEmailExists(form.getEmail())) {
            error = "Email đã tồn tại!";
        } else if (!userService.isStrongPassword(form.getPassword())) {
            error = "Mật khẩu phải >= 6 ký tự!";
        } else {
            boolean ok = userService.registerUser(form);
            if (ok) {
                success = "Đăng ký thành công!";
            } else {
                error = "Lỗi đăng ký!";
            }
        }
        req.setAttribute("error", error);
        req.setAttribute("success", success);
        req.getRequestDispatcher("/views/auth/register.jsp").forward(req, resp);
    }

}