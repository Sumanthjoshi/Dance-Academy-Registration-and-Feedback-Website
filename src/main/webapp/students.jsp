<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.StudentDAO" %>
<%@ page import="model.Registration" %>

<%
if (session.getAttribute("admin") == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>


<%
StudentDAO dao = new StudentDAO();
String keyword = request.getParameter("search");

ArrayList<Registration> students;

if (keyword != null && !keyword.trim().isEmpty()) {

    students = dao.searchStudent(keyword);

} else {

    students = dao.getAllStudents();

}
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Students</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-center mb-4">Registered Students</h2>
<div class="alert alert-info text-center">

    <h4>
        Total Registered Students :
        <%= students.size() %>
    </h4>

</div>
<div class="mb-3">

    <a href="ExportCSVServlet" class="btn btn-success">
        <i class="fa-solid fa-file-csv"></i> Download CSV
    </a>

    <a href="ExportPDFServlet" class="btn btn-danger ms-2">
        <i class="fa-solid fa-file-pdf"></i> Download PDF
    </a>

</div>
<form action="students.jsp" method="get" class="mb-3">

<div class="row">

<div class="col-md-4">

<input type="text"
class="form-control"
name="search"
placeholder="Search by Student Name">

</div>

<div class="col-md-2">

<button class="btn btn-primary">
Search
</button>

</div>

</div>

</form>
<table class="table table-bordered table-striped">

    <thead class="table-dark">

        <tr>
			<th>ID</th>
            <th>Student Name</th>
            <th>Parent Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Course</th>
            <th>Batch</th>
            <th>Edit</th>
			<th>Delete</th>

        </tr>

    </thead>

    <tbody>
    

<%
for(Registration registration : students){
%>

<tr>
<td><%= registration.getId() %></td>
<td><%= registration.getStudentName() %></td>

<td><%= registration.getParentName() %></td>

<td><%= registration.getAge() %></td>

<td><%= registration.getGender() %></td>

<td><%= registration.getPhone() %></td>

<td><%= registration.getEmail() %></td>

<td><%= registration.getCourse() %></td>

<td><%= registration.getBatch() %></td>
<td>
    <a href="editStudent.jsp?id=<%= registration.getId() %>"
   		class="btn btn-warning btn-sm">
   		 Edit
</a>
</td>

<td>
    <a href="DeleteStudentServlet?id=<%= registration.getId() %>"
   class="btn btn-danger btn-sm"
   onclick="return confirm('Are you sure you want to delete this student?');">
    Delete
</a>
</td>

</tr>

<%
}
%>

</tbody>

    

</table>

</div>

</body>

</html>