package servlet;

import java.io.IOException;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Registration;
@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
		Registration registration = new Registration();

		StudentDAO dao = new StudentDAO();
		registration.setId(Integer.parseInt(request.getParameter("id")));
		registration.setStudentName(request.getParameter("studentName"));
		registration.setParentName(request.getParameter("parentName"));
		registration.setAge(Integer.parseInt(request.getParameter("age")));
		registration.setPhone(request.getParameter("phone"));
		registration.setGender(request.getParameter("gender"));
		registration.setEmail(request.getParameter("email"));
		registration.setAddress(request.getParameter("address"));
		registration.setCourse(request.getParameter("course"));
		registration.setBatch(request.getParameter("batch"));
		registration.setExperience(request.getParameter("experience"));
		registration.setNotes(request.getParameter("notes"));
		boolean status = dao.updateStudent(registration);

		if (status) {

		    response.sendRedirect("students.jsp");

		} else {

		    response.getWriter().println("Update Failed");

		}
		
	}
}