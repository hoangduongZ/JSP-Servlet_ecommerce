package com.ecm;

import com.ecm.common.DBUtil;

import java.sql.Connection;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        Connection connection= DBUtil.getInstance().getConnection();
        if (connection!= null){
            System.out.println("connect success! "+ connection.getCatalog());
        }
    }
}
