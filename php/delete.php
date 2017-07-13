<?php
   $id = $_GET["id"];
   $num = $_GET["num"];

   include "../util/dbutil.php";

   if($num==1){
        $sql = "delete from news where nid = $id";
   }
   if($num==2){
        $sql = "delete from institution where jid = $id";
   }
   if($num==3){
        $sql = "delete from activity where hid = $id";
   }

   $flag = mysqli_query($conn,$sql);

   if(!$flag){
   	   echo "<script type='text/javascript'>alert('删除失败');location.href='../template/list.php?num=$num'</script>";
   }else{
   	   echo "<script type='text/javascript'>alert('删除成功');location.href='../template/list.php?num=$num'</script>";
   }

