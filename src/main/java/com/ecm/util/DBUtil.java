    package com.ecm.util;

    import java.io.IOException;
    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.SQLException;
    import java.util.Properties;

    import org.slf4j.Logger;
    import org.slf4j.LoggerFactory;

    import com.ecm.exception.EcmException;


    public class DBUtil {
        private static DBUtil instance;
        private Connection connection;

        private static final Logger logger = LoggerFactory.getLogger(DBUtil.class);

        private DBUtil() {
            Properties properties = new Properties();
            try {
                properties.load(DBUtil.class.getResourceAsStream("/system_global.properties"));
                String url = properties.getProperty("db.url");
                String userName = properties.getProperty("db.user");
                String password = properties.getProperty("db.password");
                Class.forName("org.postgresql.Driver");
                connection = DriverManager.getConnection(url, userName, password);
            } catch (SQLException | IOException e) {
                logger.error(DBUtil.class.getName(), e.getMessage());
            } catch (ClassNotFoundException e) {
                throw new EcmException(e);
            }
        }
        
        public static synchronized DBUtil getInstance() throws SQLException {
            if (instance == null || instance.getConnection().isClosed()) {
                instance = new DBUtil();
            }
            return instance;
        }

        public Connection getConnection() {
            return connection;
        }
    }
