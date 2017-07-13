<?php
     $username = $_POST["name"];
     $password = $_POST["password"];
     $email = $_POST["email"];

     include "../util/dbutil.php";
     
     $sql1 = "select * from inst where username = '$username'";

     $result = mysqli_query($conn, $sql1);

     if($result->num_rows>0){
          echo "<script type='text/javascript'>alert('该用户名已存在');location.href='../template/register.html'</script>";
     }

     $sql = "insert into inst values(null,'$username','$password','$email')";

     $flag = mysqli_query($conn,$sql);

     $url = "../template/login.php";
     header("location:$url");
