package com.ecm;

import com.ecm.util.DBUtil;
import java.sql.Connection;
import java.sql.SQLException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Main {

    private static final Logger logger = LoggerFactory.getLogger(Main.class);

    public static void main(String[] args) {
        try (Connection connection = DBUtil.getInstance().getConnection()) {
            if (connection != null) {
                logger.info("Connect success! Catalog: {}", connection.getCatalog());
            }
        } catch (SQLException e) {
            logger.error("Database connection failed!", e);
        }
    }
}