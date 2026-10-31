package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import model.Registration;

@WebServlet("/ExportCSVServlet")
public class ExportCSVServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/csv");
        response.setHeader("Content-Disposition",
                "attachment; filename=RegisteredStudents.csv");

        PrintWriter writer = response.getWriter();

        writer.println("ID,Student Name,Parent Name,Age,Gender,Phone,Email,Course,Batch");

        StudentDAO dao = new StudentDAO();

        ArrayList<Registration> students = dao.getAllStudents();

        for (Registration student : students) {

            writer.println(
                    student.getId() + "," +
                    student.getStudentName() + "," +
                    student.getParentName() + "," +
                    student.getAge() + "," +
                    student.getGender() + "," +
                    student.getPhone() + "," +
                    student.getEmail() + "," +
                    student.getCourse() + "," +
                    student.getBatch()
            );
        }

        writer.flush();
        writer.close();
    }
}