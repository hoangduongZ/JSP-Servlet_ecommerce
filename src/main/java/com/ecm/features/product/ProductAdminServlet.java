package com.ecm.features.product;

import com.ecm.features.user.UserDAO;
import com.ecm.model.Product;
import com.ecm.wrapper_objs.PageResult;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static java.lang.Integer.parseInt;

@WebServlet("/admin/products")
public class ProductAdminServlet extends HttpServlet {
    private IProductService productService = null;

    @Override
    public void init(){
        this.productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");

//      Call to service to get products with pagination
        int page = parseInt(req.getParameter("page"), 1);
        int size = parseInt(req.getParameter("size"), 10);
        String keyword = req.getParameter("q");
        try {
            PageResult<Product> result = productService.getPagedProducts(page, size, keyword);

            req.setAttribute("products", result.getItems());
            req.setAttribute("paging", result);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/product.jsp");
            dispatcher.forward(req, resp);
        } catch (SQLException e) {
            throw new ServletException("Error occurs when fetching products", e);
        }
    }

    private int parseInt(String param, int defaultValue) {
        try {
            return Integer.parseInt(param);
        } catch (Exception e) {
            return defaultValue;
        }
    }
}
