package com.ecm;

import com.ecm.auth.dto.Test;
import com.ecm.common.DBUtil;

import java.sql.Connection;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        Connection connection= DBUtil.getInstance().getConnection();
        if (connection!= null){
            System.out.println("connect success! "+ connection.getCatalog());
        }

        Test test = Test.builder().test1("test1").test2("test2").build();
        System.out.println(test);
    }
}
