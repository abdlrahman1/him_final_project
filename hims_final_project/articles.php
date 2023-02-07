<!DOCTYPE html>
<html>
<head>
  <style>

.container {
  display: flex;
 flex-direction: row;
 flex-wrap: wrap;
  width: 85%;
  margin: 100px auto 100px auto;
justify-content: space-evenly;
}
.card {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  width: calc(85%/4);
 
margin: 4px;

}
.card-header img {
  width: 100%;
  height: 150px;
  object-fit: cover;
}
.card-body {
  display: flex;
  flex-direction: column;
  align-items: start;
  padding: 10px;

}
.tag {
  background-color: #ccc;
  color: #fff;
  border-radius: 50px;
  font-size: 12px;
  margin: 0;
  padding: 2px 10px;
  text-transform: uppercase;
}
.tag-teal {
  background-color: #92d4e4;
}
.tag-purple {
  background-color: #3d1d94;
}
.tag-pink {
  background-color: #c62bcd;
}
.card-body h4 {
  margin: 5px 0;
}
.card-body p {
  font-size: 14px;
  margin: 0 0 0px 0;
  font-weight: 500;
  color: rgb(70, 68, 68);
}
.user {
  padding: 10px 0 0 0;
  display: flex;
 margin: 10px 0px 0 0px;
}
.user img {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  margin-right: 10px;
  object-fit: cover;
}
.user-info h5 {
  margin: 0;
}
.user-info small {
  color: #888785;
}
@media (max-width: 940px) {
  .container {
    grid-template-columns: 1fr;
    justify-items: center;
  }
}
.pagination{
  
  width: 80%;
  margin: auto;
  text-align: center;
}
.page-number {
  padding: 8px 16px;
  text-decoration: none;
  border: 1px solid #ddd;
  margin-right: 8px;
}

.pagination .page-number {
  background-color: #0077c9;
  color: #fff;
}</style>
</head>
<body>

<?php
session_start();
include("connection.php");
include("header.php");
date_default_timezone_set('Africa/cairo');

$result_per_page = 8;
$page = 1;

if(isset($_GET['page'])) {
  $page = $_GET['page'];
}

$start_from = ($page-1) * $result_per_page;

$aritcles = $database->prepare("SELECT * FROM articles LIMIT $start_from, $result_per_page");
$aritcles->execute();
$result = $aritcles->fetchALL();

?>
<div class="container">
  <?php
    foreach ($result as $re) {
      $postTime = new DateTime($re['create_date']);
      $currentTime = new DateTime();
      $interval = $currentTime->diff($postTime);
      $timeAgo = '';
      if ($interval->y >= 1) {
        $timeAgo = $interval->y . ' years ago';
      } elseif ($interval->m >= 1) {
        $timeAgo = $interval->m . ' months ago';
      } elseif ($interval->d >= 1) {
        $timeAgo = $interval->d . ' days ago';
      } elseif ($interval->h >= 1) {
        $timeAgo = $interval->h . ' hours ago';
      } elseif ($interval->i >= 1) {
        $timeAgo = $interval->i . ' minutes ago';
      } else {
        $timeAgo = 'Less than a minute ago';
      }
      echo'<div class="card">';
      echo'<a href="article_details.php?id='.$re['id'].'">';
      echo '<div class="card-header">';
      echo   '<img src="articles/'.$re["img_title"].'" alt="">';
      echo '</div>';
      echo  '<div class="card-body">';
      echo    '<span class="tag tag-teal">articles</span>';
      echo    '<h4>'.$re['title'].'<h4>';
      echo "<p>".substr($re["article"],0,100). "</p>";
      echo  '<div class="user">';
      
      echo  '<img src="articles/'.$re["admin_pro"].'" alt="">';
     
    
      echo   '<div class="user-info">';
      echo     '<h5>'.$re['admin_name'].'<h5>';
      echo     '<small>'.$timeAgo.'</small>';
      echo    '</div>';
      echo   '</div>';
      echo  '</div>';
      echo  '</div>';
      echo '</a>';
    }
    
    ?>
    
    </div>
    <div class="pagination">
  <?php
 $total_articles = $database->prepare("SELECT COUNT(*) FROM articles");
$total_articles->execute();
$total_articles = $total_articles->fetchColumn();
$total_pages = ceil($total_articles / $result_per_page);
  for ($i=1; $i<=$total_pages; $i++) {
   if($page == $i) {
    echo '<a style="color:black"; class="page-number" href="articles.php?page='.$i.'">'.$i.'</a> ';
   } 
   else{
    echo '<a class="page-number" href="articles.php?page='.$i.'">'.$i.'</a> ';
   }
   
  }
  ?>
</div>

</body>
</html>
</body>
</html>