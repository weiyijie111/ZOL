<?php
	
	include "../util/dbutil.php";
	$id = $_POST["id"];
	$title = $_POST["title"];
	$content = $_POST["content"];
	 //上传照片部分
     $newName = time().rand(1000,9999).$_FILES["file"]["name"];

     move_uploaded_file($_FILES["file"]["tmp_name"], "../images/".$newName);

	 session_start();
     $num = $_SESSION["num"];

     if($num==1){
         $sql = "update news set 
				ntitle = '$title',nimg = '$newName',ncontent = '$content'
			where
				nid = $id "; 
     }
      if($num==2){
            $sql = "update institution set 
				jname = '$title',jimg = '$newName',jcontent = '$content'
			where
				jid = $id ";
     }
      if($num==3){
           $sql = "update activity set 
				htitle = '$title',himg = '$newName',hcontent = '$content'
			where
				hid = $id ";
     }

    $flag = mysqli_query($conn,$sql);

   if(!$flag){
   	  /* echo "<script type='text/javascript'>alert('修改失败');location.href='../template/list.php?num=$num'</script>";*/
   	   echo mysqli_error($conn);
   }else{
   	   echo "<script type='text/javascript'>alert('修改成功');location.href='../template/list.php?num=$num'</script>";
   }