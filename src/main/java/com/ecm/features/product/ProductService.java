package com.ecm.features.product;

import com.ecm.model.Product;
import com.ecm.wrapper_objs.PageResult;

import java.sql.SQLException;
import java.util.List;

public class ProductService implements IProductService{
    private final IProductDAO productDAO;

    public ProductService() {
        this.productDAO = new ProductDAO();
    }

    public PageResult<Product> getPagedProducts(int page, int size, String keyword) throws SQLException {
        if (page < 1) page = 1;
        if (size < 1) size = 10;
        if (keyword == null) keyword = "";

        int offset = (page - 1) * size;
        long total = productDAO.countProducts(keyword);
        List<Product> products = productDAO.findProducts(offset, size, keyword);

        return new PageResult<>(products, page, size, total);
    }
}
