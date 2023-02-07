<?php
session_start();
include("connection.php");
include("header.php");

?>

<head>
<link rel="stylesheet" href="css/all.min.css">
<link rel="stylesheet" href="css/admin_dashboard.css">
<style>
body{
    background-color: #448DB0;
}
.parent_icon_dashboard{

    width: 80%;
    height: 170px;
    margin: auto;
    border-radius:10px;
    display: flex;
    flex-direction: row;
    justify-content: center;
    flex-wrap: wrap;
    position: absolute;
  top: 50%; right: 50%;
  transform: translate(50%,-50%);
}
.parent_3_icon_1{
    width: 100%;
    height: 50%;
    display:flex;
    justify-content: center;
    flex-direction: row;
    align-items: center;
}
.parent_3_icon_2{
    width: 100%;
    height: 50%;
    display:flex;
    justify-content: center;
    flex-direction: row;
    align-items: center;
}
.parent_icon_dashboard .fa-solid{

    font-size: 25px;


}
.books{
    width: 55px;
    height: 50px;
    border-radius: 5px;
    background-color:#91464d;
    color:white;
    text-align: center;
  
}

.articles_icon{
    width: 55px;
    height: 50px;
    border-radius: 5px;
    background-color:#bfba73;
    color:white;
    text-align: center;
}

.parent_icon_dashboard div{
    margin: 0  20px 0 20px;
}
.messages{
    width: 55px;
    height: 50px;
    border-radius: 5px;
    background-color:#248d90;
    color:white;
    text-align: center;
}

.coding{
    width: 55px;
    height: 50px;
    border-radius: 5px;
    background-color:#C87A57;
    color:white;
    text-align: center;
}
.parent_icon_dashboard .fa-solid{
    line-height: 50px;
}
.users_icon{
    width: 55px;
    height: 50px;
    border-radius: 5px;
    background-color:#9b4f65;
    color:white;
    text-align: center;
}
.back{
    width: 55px;
    height: 50px;
    border-radius: 5px;
    background-color:#84A7BC;
    color:white;
    text-align: center;
}
    </style>

</head>

<body>
    <section class="parent_icon_dashboard">
        <div class="parent_3_icon_1">
        <a href="publish_book.php">
    <div class="books">
<i class="fa-solid fa-book"></i>
<h5>books</h5>
</div>
        </a>
<a href="publish_article.php">
<div class="articles_icon">
<i class="fa-solid fa-newspaper"></i>
<h5>articles</h5>
</div>
</a>
<a href="contact_us_dashbored.php">
<div class="messages">
<i class="fa-solid fa-message"></i>
<h5>messages</h5>
</div>
</a>
</div>

<div class="parent_3_icon_2">
    <a href="publish_challenge.php">
<div class="coding">
<i class="fa-solid fa-code"></i>
<h5>challenges</h5>
</div>
</a>
<a href="profile.php">
<div class="users_icon">
<i class="fa-solid fa-users"></i>
<h5>users</h5>
</div>
</a>
<a href="index.php">
<div class="back">
<i class="fa-solid fa-house"></i>
<p>home</p>
</div>
</a>
</div>
</section>
</body>