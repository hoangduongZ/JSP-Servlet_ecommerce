package com.ecm;

import com.ecm.util.DBUtil;
import java.sql.Connection;
import java.sql.SQLException;

import com.ecm.util.SqlManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Main {

    private static final Logger logger = LoggerFactory.getLogger(Main.class);

    public static void main(String[] args) {
        int choice = 1;
        switch (choice) {
            case 1:
                checkConnection();
                break;
            case 2:
                String sql = SqlManager.get("product.findById");
                System.out.println("SQL Query for product.findById: " + sql);
                break;
            default:
                logger.error("Invalid choice!");
        }
    }

    private static void checkConnection() {
        try (Connection connection = DBUtil.getInstance().getConnection()) {
            if (connection != null) {
                logger.info("Connect success! Catalog: {}", connection.getCatalog());
            }
        } catch (SQLException e) {
            logger.error("Database connection failed!", e);
        }
    }
}