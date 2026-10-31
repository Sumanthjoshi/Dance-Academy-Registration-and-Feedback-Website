package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Registration;
import util.DatabaseConnection;

public class RegistrationDAO {
	public boolean saveRegistration(Registration registration) {

	    boolean status = false;
	    Connection con = null;
	    PreparedStatement ps = null;

	    try {

	        con = DatabaseConnection.getConnection();
	        String sql = "INSERT INTO registration (student_name, parent_name, age, gender, phone, email, address, course, batch, experience, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	        ps = con.prepareStatement(sql);
	        ps.setString(1, registration.getStudentName());
	        ps.setString(2, registration.getParentName());
	        ps.setInt(3, registration.getAge());
	        ps.setString(4, registration.getGender());
	        ps.setString(5, registration.getPhone());
	        ps.setString(6, registration.getEmail());
	        ps.setString(7, registration.getAddress());
	        ps.setString(8, registration.getCourse());
	        ps.setString(9, registration.getBatch());
	        ps.setString(10, registration.getExperience());
	        ps.setString(11, registration.getNotes());
	        int rows = ps.executeUpdate();

	        if (rows > 0) {

	            status = true;

	        }

	    } catch (Exception e) {

	        e.printStackTrace();

	    }
	    return status;

	}
}