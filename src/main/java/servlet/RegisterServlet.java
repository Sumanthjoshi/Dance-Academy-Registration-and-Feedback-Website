package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import dao.RegistrationDAO;
import model.Registration;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
		
		Registration registration = new Registration();

		RegistrationDAO dao = new RegistrationDAO();
		
		registration.setStudentName(request.getParameter("studentName"));
		registration.setParentName(request.getParameter("parentName"));
		registration.setAge(Integer.parseInt(request.getParameter("age")));
		registration.setGender(request.getParameter("gender"));
		registration.setPhone(request.getParameter("phone"));
		registration.setEmail(request.getParameter("email"));
		registration.setAddress(request.getParameter("address"));
		registration.setCourse(request.getParameter("course"));
		registration.setBatch(request.getParameter("batch"));
		registration.setExperience(request.getParameter("experience"));
		registration.setNotes(request.getParameter("notes"));
		
		boolean status = dao.saveRegistration(registration);

		if (status) {

		    request.setAttribute("message", "Registration Submitted Successfully!");
		    request.getRequestDispatcher("register.jsp").forward(request, response);

		} else {

		    response.sendRedirect("register.jsp?error=true");

		}	}
}