package com.ecm.product;

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

@WebServlet("/products")
public class ProductListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();
//        products.add(new Product("Sản phẩm A", "SP001", "https://blog.saleslayer.com/hs-fs/hubfs/A_Blog/2020-05-May/mockup-bottles.jpeg?width=772&name=mockup-bottles.jpeg", 350000));
//        products.add(new Product("Sản phẩm B", "SP002", "https://blog.saleslayer.com/hs-fs/hubfs/A_Blog/2020-05-May/mockup-bottles.jpeg?width=772&name=mockup-bottles.jpeg", 420000));
//        products.add(new Product("Sản phẩm C", "SP003", "https://blog.saleslayer.com/hs-fs/hubfs/A_Blog/2020-05-May/mockup-bottles.jpeg?width=772&name=mockup-bottles.jpeg", 299000));
//        products.add(new Product("Sản phẩm D", "SP004", "https://via.placeholder.com/300x200", 199000));
//        products.add(new Product("Sản phẩm E", "SP005", "https://via.placeholder.com/300x200", 580000));
//        products.add(new Product("Sản phẩm F", "SP006", "https://via.placeholder.com/300x200", 330000));

        req.setAttribute("products", products);
        req.setAttribute("totalPages", 10);
        req.setAttribute("currentPage", 5);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/product/index.jsp");
        dispatcher.forward(req, resp);
    }
}
