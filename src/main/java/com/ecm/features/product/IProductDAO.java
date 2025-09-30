package com.ecm.features.product;

import com.ecm.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
    List<Product> findProducts(int offset, int limit, String keyword);
    long countProducts(String keyword) throws SQLException;
}
