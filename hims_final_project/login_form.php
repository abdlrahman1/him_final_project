<?php 




?>


<html lang="en">
<head>
    <link rel="stylesheet" href="css/all.min.css"/>
    <link rel="stylesheet" href="css/login.css"/>
    <title>Document</title>


</head>
<body>

<form method="post">
<div class="con" id = "login_con">
<i class="fa-solid fa-xmark remove_mark" id="remove_mark" ></i>
<h1> sign in</h1>
<div class = "icons"> 

<div class = "icon"><i class="fa-regular fa-user"></i> </div>


</div>
<p> or use your account</p>
<div class="input_con">
<input type="text" class="username_input" placeholder="email" name="log_email">

<input type="password" class="passoword_input" placeholder="password"name="log_pass">
</div>
<div class = "login_links">
<a href = "forgot-password"> forgot your  password?</a>
<a href = "register"> dont have an account?</a>
</div>
<div class = "login_btn"> <button type = "submit"name="log_btn"> SIGN IN</button></div>
</div>
</form>
</body>
</html>
<script src="js/login.js"></script>