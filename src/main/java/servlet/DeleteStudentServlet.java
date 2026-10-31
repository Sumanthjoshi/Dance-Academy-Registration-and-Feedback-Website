package servlet;

import java.io.IOException;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteStudentServlet")
public class DeleteStudentServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		StudentDAO dao = new StudentDAO();

		boolean status = dao.deleteStudent(id);

		if (status) {

		    response.sendRedirect("students.jsp");

		} else {

		    response.getWriter().println("Delete Failed");

		}
	}
}