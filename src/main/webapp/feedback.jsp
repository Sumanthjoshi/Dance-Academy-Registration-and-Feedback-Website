<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Feedback | Radhashankari Dance Academy</title>

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

Student Feedback

</h1>

<p>

Your Feedback Inspires Us To Grow

</p>

</div>

</div>

</section>
<!--==================================
        STUDENT REVIEWS
===================================-->

<section class="welcome-section">

<div class="container">

<div class="section-title">

<h5>

Testimonials

</h5>

<h2>

What Our Students Say

</h2>

</div>

<div class="row g-4">

<!-- Review 1 -->

<div class="col-lg-4">

<div class="course-card">

<i class="fa-solid fa-user-circle fa-4x text-warning mb-3"></i>

<h3>Diya Dhananjaya</h3>

<div class="mb-3">

<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>

</div>

<p>

"The classes are well-structured and enjoyable. I have gained confidence in stage performances."

</p>

</div>

</div>

<!-- Review 2 -->

<div class="col-lg-4">

<div class="course-card">

<i class="fa-solid fa-user-circle fa-4x text-warning mb-3"></i>

<h3>Janki Bhavsar</h3>

<div class="mb-3">

<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>

</div>

<p>

"Guru Bhagavathi Kulkarni teaches with great patience and dedication. Every class is inspiring."

</p>

</div>

</div>

<!-- Review 3 -->

<div class="col-lg-4">

<div class="course-card">

<i class="fa-solid fa-user-circle fa-4x text-warning mb-3"></i>

<h3>Mahika Makal</h3>

<div class="mb-3">

<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star text-warning"></i>
<i class="fa-solid fa-star-half-stroke text-warning"></i>

</div>

<p>

"The academy has helped me improve my expressions, discipline, and love for Bharatanatyam."

</p>

</div>

</div>

</div>

</div>

</section>
<!--==================================
        FEEDBACK FORM
===================================-->

<section class="welcome-section">

<div class="container">

<div class="section-title">

<h5>

Share Your Experience

</h5>

<h2>

Student Feedback Form

</h2>

</div>

<div class="row justify-content-center">

<div class="col-lg-8">

<div class="form-card">

<form action="#" method="post">

<div class="mb-4">

<label class="form-label">

<i class="fa-solid fa-user me-2 text-warning"></i>

Full Name

</label>

<input type="text"
class="form-control"
placeholder="Enter Your Name"
required>

</div>

<div class="mb-4">

<label class="form-label">

<i class="fa-solid fa-star me-2 text-warning"></i>

Overall Rating

</label>

<select class="form-select" required>

<option value="">Select Rating</option>

<option>⭐⭐⭐⭐⭐ Excellent</option>

<option>⭐⭐⭐⭐ Very Good</option>

<option>⭐⭐⭐ Good</option>

<option>⭐⭐ Average</option>

<option>⭐ Poor</option>

</select>

</div>

<div class="mb-4">

<label class="form-label">

<i class="fa-solid fa-comment me-2 text-warning"></i>

Your Feedback

</label>

<textarea
class="form-control"
rows="5"
placeholder="Write your feedback here..."
required></textarea>

</div>

<div class="text-center">

<button type="submit" class="register-btn">

<i class="fa-solid fa-paper-plane"></i>

Submit Feedback

</button>

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

Dedicated to preserving the rich heritage of Bharatanatyam through discipline, devotion, and artistic excellence.

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

Contact Us

</h3>

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

<p>

<i class="fa-solid fa-clock"></i>

Mon – Sat : 9:00 AM – 7:00 PM

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