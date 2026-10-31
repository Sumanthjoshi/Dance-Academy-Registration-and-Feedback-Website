<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="util.DatabaseConnection" %>

<%
int id = Integer.parseInt(request.getParameter("id"));

Connection con = DatabaseConnection.getConnection();

PreparedStatement ps = con.prepareStatement("SELECT * FROM registration WHERE id=?");

ps.setInt(1, id);

ResultSet rs = ps.executeQuery();

rs.next();
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Edit Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="mb-4">Edit Student</h2>

<form action="UpdateStudentServlet" method="post">

<input type="hidden" name="id" value="<%= rs.getInt("id") %>">

<div class="mb-3">
<label>Student Name</label>
<input type="text" class="form-control" name="studentName"
value="<%= rs.getString("student_name") %>">
</div>

<div class="mb-3">
<label>Parent Name</label>
<input type="text" class="form-control" name="parentName"
value="<%= rs.getString("parent_name") %>">
</div>

<div class="mb-3">
<label>Age</label>
<input type="number" class="form-control" name="age"
value="<%= rs.getInt("age") %>">
</div>

<div class="mb-3">
<label>Gender</label>
<select class="form-select" name="gender">

<option <%= rs.getString("gender").equals("Male") ? "selected" : "" %>>Male</option>

<option <%= rs.getString("gender").equals("Female") ? "selected" : "" %>>Female</option>

<option <%= rs.getString("gender").equals("Other") ? "selected" : "" %>>Other</option>

</select>
</div>

<div class="mb-3">
<label>Phone</label>
<input type="text" class="form-control" name="phone"
value="<%= rs.getString("phone") %>">
</div>

<div class="mb-3">
<label>Email</label>
<input type="email" class="form-control" name="email"
value="<%= rs.getString("email") %>">
</div>

<div class="mb-3">
<label>Address</label>
<textarea class="form-control" name="address"><%= rs.getString("address") %></textarea>
</div>

<div class="mb-3">
<label>Course</label>
<select class="form-select" name="course">

<option <%= rs.getString("course").equals("Beginner Bharatanatyam") ? "selected" : "" %>>Beginner Bharatanatyam</option>

<option <%= rs.getString("course").equals("Intermediate Bharatanatyam") ? "selected" : "" %>>Intermediate Bharatanatyam</option>

<option <%= rs.getString("course").equals("Advanced Bharatanatyam") ? "selected" : "" %>>Advanced Bharatanatyam</option>

</select>
</div>

<div class="mb-3">
<label>Batch</label>
<select class="form-select" name="batch">

<option <%= rs.getString("batch").equals("Morning (8:00 AM - 10:00 AM)") ? "selected" : "" %>>Morning (8:00 AM - 10:00 AM)</option>

<option <%= rs.getString("batch").equals("Evening (5:00 PM - 7:00 PM)") ? "selected" : "" %>>Evening (5:00 PM - 7:00 PM)</option>

<option <%= rs.getString("batch").equals("Weekend Batch") ? "selected" : "" %>>Weekend Batch</option>

</select>
</div>

<div class="mb-3">
<label>Experience</label>
<textarea class="form-control" name="experience"><%= rs.getString("experience") %></textarea>
</div>

<div class="mb-3">
<label>Notes</label>
<textarea class="form-control" name="notes"><%= rs.getString("notes") %></textarea>
</div>

<button type="submit" class="btn btn-success">
Update Student
</button>
</form>

</div>

</body>

</html>