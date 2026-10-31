<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Admin Login</title>

<link rel="stylesheet" href="css/login.css">

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;700&family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

</head>

<body>

<div class="login-container">

<div class="login-box">

<h1>RADHASHANKARI</h1>

<h2>DANCE ACADEMY</h2>
<div class="gold-divider">
    <span></span>
    ❀
    <span></span>
</div>

<form action="LoginServlet" method="post">

<div class="input-box">

<i class="fa-solid fa-user"></i>

<input
type="text"
name="username"
placeholder="Username"
required>

</div>

<div class="input-box">
    <i class="fa fa-lock"></i>

    <input
        type="password"
        id="password"
        name="password"
        placeholder="Password"
        required>

    <i class="fa fa-eye" id="togglePassword"></i>
</div>

<button type="submit">
    LOGIN
</button>

</form>
<p class="tagline">
    Preserving Tradition Through Passion
</p>

<p>

© 2026 Radhashankari Dance Academy

</p>

</div>

</div>
<script>
const togglePassword = document.getElementById("togglePassword");
const password = document.getElementById("password");

togglePassword.addEventListener("click", function () {

    if (password.type === "password") {
        password.type = "text";
        this.classList.remove("fa-eye");
        this.classList.add("fa-eye-slash");
    } else {
        password.type = "password";
        this.classList.remove("fa-eye-slash");
        this.classList.add("fa-eye");
    }

});
</script>

</body>

</html>