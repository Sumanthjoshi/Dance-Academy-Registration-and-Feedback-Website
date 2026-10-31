<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Register | Radhashankari Dance Academy</title>

<!-- Bootstrap -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Google Fonts -->

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link rel="preconnect"
href="https://fonts.gstatic.com"
crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Cormorant+Garamond:wght@300;400;500;600&family=Poppins:wght@300;400;500;600&display=swap"
rel="stylesheet">

<!-- Font Awesome -->

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<!-- CSS -->

<link rel="stylesheet"
href="css/style.css">

</head>

<body>
<%
String message = (String) request.getAttribute("message");

if (message != null) {
%>

<script>
alert("<%= message %>");
</script>

<%
}
%>


<!--==================================
        HEADER
===================================-->

<header class="about-header">

<div class="container d-flex justify-content-between align-items-center">

<div class="about-logo d-flex align-items-center">

<img src="images/logoo.jpg"
class="logo"
alt="Logo">

<div class="academy ms-3">

<h2>

Radhashankari

</h2>

<p>

Dance Academy

</p>

</div>

</div>

<a href="index.jsp"
class="home-btn">

<i class="fa-solid fa-house"></i>

Back to Home

</a>

</div>

</header>

<!--==================================
        HERO SECTION
===================================-->

<section class="about-hero">

<div class="overlay">

<div class="container text-center">

<h1>

Student Registration

</h1>

<p>

Join Our Bharatanatyam Family

</p>

</div>

</div>

</section>
<!--==================================
        REGISTRATION FORM
===================================-->

<section class="welcome-section">

<div class="container">

<div class="section-title">

<h5>

Admissions Open

</h5>

<h2>

Student Registration Form

</h2>

</div>

<div class="row justify-content-center">

<div class="col-lg-8">

<div class="form-card">
<form action="RegisterServlet" method="post">
<div class="row">

<div class="col-md-6 mb-4">

<label class="form-label">
Student Name
</label>

<input type="text"
class="form-control"
name="studentName"
placeholder="Enter Student Name"
required>

</div>

<div class="col-md-6 mb-4">

<label class="form-label">
Parent / Guardian Name
</label>

<input type="text"
class="form-control"
name="parentName"
placeholder="Enter Parent Name"
required>

</div>

<div class="col-md-6 mb-4">

<label class="form-label">
Age
</label>

<input type="number"
class="form-control"
name="age"
placeholder="Enter Age"
required>
</div>

<div class="col-md-6 mb-4">

<label class="form-label">
Gender
</label>

<select class="form-select" name="gender" required>

<option value="">Select Gender</option>

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>
</div>

<div class="col-md-6 mb-4">

<label class="form-label">
Mobile Number
</label>

<input type="tel"
class="form-control"
name="phone"
placeholder="Enter Mobile Number"
required>
</div>

<div class="col-md-6 mb-4">

<label class="form-label">
Email Address
</label>

<input type="email"
class="form-control"
name="email"
placeholder="Enter Email Address">

</div>

<div class="col-12 mb-4">

<label class="form-label">
Address
</label>

<textarea class="form-control"
name="address"
rows="3"
placeholder="Enter Address"></textarea>
</div>
<div class="col-md-6 mb-4">

<label class="form-label">

Select Course

</label>

<select class="form-select" name="course" required>

<option value="">Choose Course</option>

<option>Beginner Bharatanatyam</option>

<option>Intermediate Bharatanatyam</option>

<option>Advanced Bharatanatyam</option>

</select>

</div>

<div class="col-md-6 mb-4">

<label class="form-label">

Preferred Batch

</label>

<select class="form-select" name="batch" required>

<option value="">Choose Batch</option>

<option>Morning (8:00 AM - 10:00 AM)</option>

<option>Evening (5:00 PM - 7:00 PM)</option>

<option>Weekend Batch</option>

</select>

</div>

<div class="col-12 mb-4">

<label class="form-label">

Previous Dance Experience

</label>

<textarea class="form-control"
name="experience"
rows="3"
placeholder="Mention your dance experience (if any)"></textarea>
</div>

<div class="col-12 mb-4">

<label class="form-label">

Additional Notes

</label>

<textarea class="form-control"
name="notes"
rows="3"
placeholder="Any additional information"></textarea>

</div>



<div class="col-12 text-center mt-4">

<button type="submit" class="register-btn">

<i class="fa-solid fa-paper-plane"></i>

Submit Registration

</button>

</div>
</div>

</form>

</div>

</div>

</div>

</div>

</section>
<!--==================================
        FOOTER
===================================-->

<footer class="footer">

<div class="container">

<div class="row">

<div class="col-lg-4">

<h3>

Radhashankari Dance Academy

</h3>

<p>

Dedicated to preserving the rich heritage of Bharatanatyam through discipline, devotion, and excellence.

</p>

</div>

<div class="col-lg-4">

<h3>

Quick Links

</h3>

<ul class="footer-links">

<li><a href="index.jsp">Home</a></li>

<li><a href="about.jsp">About</a></li>

<li><a href="achievements.jsp">Achievements</a></li>

<li><a href="courses.jsp">Courses</a></li>

<li><a href="register.jsp">Register</a></li>

<li><a href="feedback.jsp">Feedback</a></li>

<li><a href="contact.jsp">Contact</a></li>

</ul>

</div>

<div class="col-lg-4">

<h3>

Contact Us</h3>

<p>

<i class="fa-solid fa-location-dot"></i>

Bengaluru, Karnataka

</p>

<p>

<i class="fa-solid fa-phone"></i>

+91 XXXXX XXXXX

</p>

<p>

<i class="fa-solid fa-envelope"></i>

radhashankaridanceacademy@gmail.com

</p>

</div>

</div>

<hr>

<div class="text-center">

<p>

© 2026 Radhashankari Dance Academy. All Rights Reserved.

</p>

</div>

</div>

</footer>

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>