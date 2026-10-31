package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

    private static final String URL =
            "jdbc:mysql://localhost:3306/radhashankari_dance_academy";

    private static final String USER = System.getenv ("root");

    private static final String PASSWORD = System.getenv ("Dance@123");

    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(URL, USER, PASSWORD);

            System.out.println("Database Connected Successfully!");

        } catch (Exception e) {

            e.printStackTrace();

        }

        return con;
    }
}