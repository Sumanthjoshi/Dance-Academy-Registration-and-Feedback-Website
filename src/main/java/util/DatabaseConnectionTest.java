package util;

import java.sql.Connection;

public class DatabaseConnectionTest {

    public static void main(String[] args) {

        Connection con = DatabaseConnection.getConnection();

        if (con != null) {
            System.out.println("Connection Successful!");
        } else {
            System.out.println("Connection Failed!");
        }
    }
}