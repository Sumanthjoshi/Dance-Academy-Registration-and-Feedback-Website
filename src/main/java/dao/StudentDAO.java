package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Registration;
import util.DatabaseConnection;

public class StudentDAO {
	
	public ArrayList<Registration> getAllStudents() {

	    ArrayList<Registration> list = new ArrayList<>();
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    try {

	        con = DatabaseConnection.getConnection();
	        String sql = "SELECT * FROM registration";

	        ps = con.prepareStatement(sql);

	        rs = ps.executeQuery();
	        while (rs.next()) {

	            Registration registration = new Registration();
	            registration.setId(rs.getInt("id"));
	            registration.setStudentName(rs.getString("student_name"));
	            registration.setParentName(rs.getString("parent_name"));
	            registration.setAge(rs.getInt("age"));
	            registration.setGender(rs.getString("gender"));
	            registration.setPhone(rs.getString("phone"));
	            registration.setEmail(rs.getString("email"));
	            registration.setAddress(rs.getString("address"));
	            registration.setCourse(rs.getString("course"));
	            registration.setBatch(rs.getString("batch"));
	            registration.setExperience(rs.getString("experience"));
	            registration.setNotes(rs.getString("notes"));

	            list.add(registration);

	        }

	    } catch (Exception e) {

	        e.printStackTrace();

	    }

	    return list;

	}
	public boolean updateStudent(Registration registration) {
		
		Connection con = null;
		PreparedStatement ps = null;

		try {

		    con = DatabaseConnection.getConnection();

		    String sql = "UPDATE registration SET student_name=?, parent_name=?, age=?, gender=?, phone=?, email=?, address=?, course=?, batch=?, experience=?, notes=? WHERE id=?";
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
		    ps.setInt(12, registration.getId());
		    int rows = ps.executeUpdate();

		    if (rows > 0) {

		        return true;

		    }

		} catch (Exception e) {

		    e.printStackTrace();

		}
	    return false;

	}
	public boolean deleteStudent(int id) {

	    Connection con = null;
	    PreparedStatement ps = null;

	    try {

	        con = DatabaseConnection.getConnection();

	        String sql = "DELETE FROM registration WHERE id=?";

	        ps = con.prepareStatement(sql);

	        ps.setInt(1, id);

	        int rows = ps.executeUpdate();

	        if (rows > 0) {

	            return true;

	        }

	    } catch (Exception e) {

	        e.printStackTrace();

	    }

	    return false;
}
	
	public ArrayList<Registration> searchStudent(String keyword) {

	    ArrayList<Registration> list = new ArrayList<>();

	    try {

	        Connection con = DatabaseConnection.getConnection();

	        String sql = "SELECT * FROM registration WHERE student_name LIKE ?";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, "%" + keyword + "%");

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Registration registration = new Registration();

	            registration.setId(rs.getInt("id"));
	            registration.setStudentName(rs.getString("student_name"));
	            registration.setParentName(rs.getString("parent_name"));
	            registration.setAge(rs.getInt("age"));
	            registration.setGender(rs.getString("gender"));
	            registration.setPhone(rs.getString("phone"));
	            registration.setEmail(rs.getString("email"));
	            registration.setCourse(rs.getString("course"));
	            registration.setBatch(rs.getString("batch"));

	            list.add(registration);

	        }

	    } catch (Exception e) {

	        e.printStackTrace();

	    }

	    return list;
	}

	}
