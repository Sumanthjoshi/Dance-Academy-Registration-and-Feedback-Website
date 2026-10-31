<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
HttpSession session1 = request.getSession(false);

boolean adminLoggedIn = (session1 != null && session1.getAttribute("admin") != null);
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>
Radhashankari Dance Academy
</title>

<!-- Bootstrap -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Google Fonts -->

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link rel="preconnect"
href="https://fonts.gstatic.com"
crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;500;600;700&family=Cormorant+Garamond:wght@300;400;500;600;700&family=Poppins:wght@300;400;500;600&display=swap"
rel="stylesheet">

<!-- Font Awesome -->

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<!-- CSS -->

<link rel="stylesheet"
href="css/style.css">

</head>

<body>

<!--==========================
        NAVBAR
===========================-->

<nav class="navbar navbar-expand-lg">

<div class="container">

<a class="navbar-brand"
href="index.jsp">

<div class="logo-box">

<img src="images/logoo.jpg"
class="logo">

</div>

<div class="academy">

<h2>

Radhashankari

</h2>

<p>

Dance Academy

</p>

</div>

</a>

<button class="navbar-toggler"

type="button"

data-bs-toggle="collapse"

data-bs-target="#menu">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse"

id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">

<a class="nav-link active"
href="index.jsp">

Home

</a>

</li>

<li class="nav-item">
    <a class="nav-link" href="about.jsp" target="_blank">
        About
    </a>
</li>

<li class="nav-item">

<a class="nav-link"
href="achievements.jsp">

Achievements

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="courses.jsp">

Courses

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="register.jsp">

Register

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="feedback.jsp">

Feedback

</a>

</li>

<li class="nav-item">

<a class="nav-link"
href="contact.jsp">

Contact

</a>

</li>
<% if(adminLoggedIn){ %>

<li class="nav-item">

    <a class="nav-link"
       href="students.jsp">

        Admissions

    </a>

</li>

<li class="nav-item">

    <a class="nav-link"
       href="LogoutServlet">

        Logout

    </a>

</li>

<% } else { %>

<li class="nav-item">

    <a class="nav-link"
       href="login.jsp">

        Login

    </a>

</li>

<% } %>

</ul>

</div>

</div>

</nav>

<!--==========================
      HERO SECTION
===========================-->

<section class="hero">

<div class="overlay">

<div class="container">

<div class="row align-items-center">

<div class="col-lg-6">

<div class="hero-content">

<h4>

Welcome To

</h4>

<h1>

RADHASHANKARI

</h1>

<h2>

DANCE ACADEMY

</h2>

<div class="divider">

<span></span>

<i class="fa-solid fa-dharmachakra"></i>

<span></span>

</div>

<p>

Preserving the Beauty of Bharatanatyam

<br>

with Grace, Discipline and Tradition.

</p>

<a href="register.jsp"

class="register-btn">

Register Now

</a>

</div>

</div>

<div class="col-lg-6">

<!-- Empty because the dancer
is already inside hero.png -->

</div>

</div>

</div>

</div>

</section>

<!--=====================================
        WELCOME SECTION
======================================-->

<section class="welcome-section">

<div class="container">

<div class="row align-items-center">

<div class="col-lg-5">

<div class="welcome-image">

<img src="images/guru.png" class="img-fluid">

</div>

</div>

<div class="col-lg-7">

<div class="welcome-content">

<h5>

Welcome To

</h5>

<h2>

Radhashankari Dance Academy

</h2>

<div class="small-divider">

<span></span>

<i class="fa-solid fa-om"></i>

<span></span>

</div>

<p>

Radhashankari Dance Academy is dedicated to preserving the rich heritage of Bharatanatyam by nurturing students with discipline, devotion, and artistic excellence.

</p>

<p>

Under the guidance of Guru Bhagavathi Kulkarni, the academy provides professional training for beginners, intermediate learners, and advanced performers while encouraging confidence, creativity, and cultural values.

</p>

<a href="about.jsp" class="about-btn">

Know More

</a>

</div>

</div>

</div>

</div>

</section>

<!--=====================================
        WHY CHOOSE US
======================================-->

<section class="why-section">

<div class="container">

<div class="section-title">

<h5>

Why Choose Us

</h5>

<h2>

Experience the Art of Bharatanatyam

</h2>

</div>

<div class="row">

<div class="col-lg-4">

<div class="feature-box">

<i class="fa-solid fa-medal"></i>

<h3>

Experienced Guru

</h3>

<p>

Learn Bharatanatyam under the guidance of an experienced and passionate dance teacher.

</p>

</div>

</div>

<div class="col-lg-4">

<div class="feature-box">

<i class="fa-solid fa-child-reaching"></i>

<h3>

Professional Training

</h3>

<p>

Structured learning from Beginner to Advanced level with practical stage exposure.

</p>

</div>

</div>

<div class="col-lg-4">

<div class="feature-box">

<i class="fa-solid fa-trophy"></i>

<h3>

Performance Opportunities

</h3>

<p>

Students participate in cultural events, competitions, annual functions and examinations.

</p>

</div>

</div>

</div>

</div>

</section>

<!--=====================================
        COURSE PREVIEW
======================================-->

<section class="course-preview">

<div class="container">

<div class="section-title">

<h5>

Our Courses

</h5>

<h2>

Choose Your Learning Journey

</h2>

</div>

<div class="row">

<div class="col-lg-4">

<div class="course-card">

<h3>

Beginner

</h3>

<p>

Learn basic steps, posture, rhythm, expressions and discipline.

</p>

<a href="courses.jsp">

Read More →

</a>

</div>

</div>

<div class="col-lg-4">

<div class="course-card">

<h3>

Intermediate

</h3>

<p>

Improve flexibility, choreography, confidence and performance skills.

</p>

<a href="courses.jsp">

Read More →

</a>

</div>

</div>

<div class="col-lg-4">

<div class="course-card">

<h3>

Advanced

</h3>

<p>

Master Bharatanatyam with advanced choreography and stage performances.

</p>

<a href="courses.jsp">

Read More →

</a>

</div>

</div>

</div>

</div>

</section>

<!--=====================================
        ACHIEVEMENTS
======================================-->

<section class="achievement-section">

<div class="container">

<div class="section-title">

<h5>

Achievements

</h5>

<h2>

Our Journey So Far

</h2>

</div>

<div class="row text-center">

<div class="col-md-3">

<div class="counter-box">

<h1>70+</h1>

<p>Students Trained</p>

</div>

</div>

<div class="col-md-3">

<div class="counter-box">

<h1>16+</h1>

<p>Years Experience</p>

</div>

</div>

<div class="col-md-3">

<div class="counter-box">

<h1>50+</h1>

<p>Stage Performances</p>

</div>

</div>

<div class="col-md-3">

<div class="counter-box">

<h1>100%</h1>

<p>Dedication</p>

</div>

</div>

</div>

</div>

</section>

<!--=====================================
        TESTIMONIALS
======================================-->

<section class="testimonial-section">

<div class="container">

<div class="section-title">

<h5>

Testimonials

</h5>

<h2>

What Our Students Say

</h2>

</div>

<div class="row">

<div class="col-lg-4">

<div class="testimonial-card">

<p>

"The academy gave me confidence and discipline. Learning Bharatanatyam here has been a wonderful experience."

</p>

<h4>

- Student

</h4>

</div>

</div>

<div class="col-lg-4">

<div class="testimonial-card">

<p>

"The teaching style is professional, patient and inspiring. Every class motivates us to improve."

</p>

<h4>

- Parent

</h4>

</div>

</div>

<div class="col-lg-4">

<div class="testimonial-card">

<p>

"A beautiful place to learn classical dance while understanding Indian culture and tradition."

</p>

<h4>

- Performer

</h4>

</div>

</div>

</div>

</div>

</section>

<!--=====================================
        CONTACT
======================================-->

<section class="contact-preview">

<div class="container">

<div class="row">

<div class="col-lg-6">

<h2>

Visit Our Academy

</h2>

<p>

📍 Bangalore, Karnataka

</p>

<p>

📞 +91 9900604909

</p>

<p>

✉ info@radhashankaridanceacademy.com

</p>

<p>

🕘 Monday - Saturday

<br>

9:00 AM - 7:00 PM

</p>

</div>

<div class="col-lg-6 text-center">

<a href="contact.jsp"

class="register-btn">

Contact Us

</a>

</div>

</div>

</div>

</section>

<!--=====================================
        FOOTER
======================================-->

<footer>

<div class="container">

<div class="row">

<div class="col-lg-4">

<h3>

Radhashankari Dance Academy

</h3>

<p>

Preserving the beauty and tradition of Bharatanatyam through excellence in teaching and performance.

</p>

</div>

<div class="col-lg-4">

<h3>

Quick Links

</h3>

<ul class="footer-links">

<li><a href="index.jsp">Home</a></li>

<li><a href="about.jsp">About</a></li>

<li><a href="courses.jsp">Courses</a></li>

<li><a href="register.jsp">Register</a></li>

<li><a href="contact.jsp">Contact</a></li>

</ul>

</div>

<div class="col-lg-4">

<h3>

Follow Us

</h3>

<div class="social-icons">

<a href="#"><i class="fab fa-facebook-f"></i></a>

<a href="#"><i class="fab fa-instagram"></i></a>

<a href="#"><i class="fab fa-youtube"></i></a>

</div>

</div>

</div>

<hr>

<p class="copyright">

© 2026 Radhashankari Dance Academy | All Rights Reserved.

</p>

</div>

</footer>

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>