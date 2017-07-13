<?php 
     $title = $_POST["title"];
     $content = $_POST["content"];
     $createDate = date("Y-m-d");
     
     //上传照片部分
     $newName = time().rand(1000,9999).$_FILES["file"]["name"];

     move_uploaded_file($_FILES["file"]["tmp_name"], "../images/".$newName);
     
     //连接数据库
     include "../util/dbutil.php";
     session_start();

     $num = $_SESSION["num"];
     if($num==1){
        $sql = "insert into news values(null,'$title','$newName','$content','$createDate')";
     }
     if($num==2){
         $sql = "insert into institution values(null,'$title','$newName','$content','$createDate')";
     }
     if($num==3){
         $sql = "insert into activity values(null,'$title','$newName','$content','$createDate')";
     } 

      mysqli_query($conn,$sql);

      $url = "../template/list.php?num=$num";

      header("location:$url");

