package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.DatabaseConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("LoginServlet Called");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("Username = " + username);
        System.out.println("Password = " + password);

        try {

            Connection con = DatabaseConnection.getConnection();

            String sql = "SELECT * FROM admin WHERE username=? AND password=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                System.out.println("Login Successful");

                HttpSession session = request.getSession();

                session.setAttribute("admin", username);

                response.sendRedirect("index.jsp");

            } else {

                System.out.println("Invalid Username or Password");

                response.sendRedirect("login.jsp?error=true");

            }
        } catch (Exception e) {

            e.printStackTrace();

        }

    }

}