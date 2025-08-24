package com.ecm.features.product;

import com.ecm.model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/products-detail")
public class ProductDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        List<Product> products = new ArrayList<>();

        req.setAttribute("products", products);
        req.setAttribute("totalPages", 10);
        req.setAttribute("currentPage", 5);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/client/product-detail.jsp");
        dispatcher.forward(req, resp);
    }
}
