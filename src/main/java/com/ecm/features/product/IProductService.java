package com.ecm.features.product;

import com.ecm.model.Product;
import com.ecm.wrapper_objs.PageResult;

import java.sql.SQLException;

public interface IProductService {
    PageResult<Product> getPagedProducts(int page, int size, String keyword) throws SQLException;
}
