package com.ecm.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Category {
    private Integer categoryId;
    private String name;
    private Integer parentId;

    public Category() {}

    public static Category fromResultSet(ResultSet rs) throws SQLException {
        Category c = new Category();
        c.categoryId = rs.getInt("category_id");
        c.name = rs.getString("name");
        c.parentId = (Integer) rs.getObject("parent_id");
        return c;
    }
}
