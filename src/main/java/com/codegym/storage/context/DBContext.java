package com.codegym.storage.context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String CONN_URL = "jdbc:mysql://localhost:3306/Shoe_DB";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Nt123456";

    public static Connection getConnection() {
        Connection connection;
        try {
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(CONN_URL, USERNAME, PASSWORD);
            System.out.println("KET NOI data --------> THANH CONG");
            return connection;
        } catch (Exception e) {
            System.out.println("KET NOI data --------> BI LOI");
            e.printStackTrace();
        }
        return null;
    }
}
