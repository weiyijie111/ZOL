<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<script src="../js/jquery.js"></script>
</head>
<body>
<?php
     include "../util/dbutil.php";
     session_start();
     $num = $_SESSION["num"];
     $id = $_GET["id"];
     if($num==1){
         $sql = "select nid id,nimg img,ntitle title,ncontent content,ncreateDate createDate from news where nid = $id";
     }
      if($num==2){
         $sql = "select jid id,jimg img,jname title,jcontent content,jcreateDate createDate from institution where jid = $id";
     }
      if($num==3){
          $sql = "select hid id,himg img,htitle title,hcontent content,hcreateDate createDate from activity where hid = $id";
     }

     $result = mysqli_query($conn,$sql);
     $row = mysqli_fetch_array($result,MYSQL_ASSOC);
     
 ?>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="../php/mdf.php" enctype='multipart/form-data'>
    <input type="hidden" name="id" value='<?php echo $row["id"]; ?>'>
      <div class="form-group">
        <div class="label">
          <label>标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" placeholder='<?php echo $row["title"]; ?>' name="title" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
          <input type="file" id="url1"  name="file" class="input tips" style="width:25%; float:left;"  value="123"  data-toggle="hover" data-place="right" data-image="" />

        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>内容：</label>
        </div>
        <div class="field">
          <textarea name="content" class="input" style="height:200px; border:1px solid #ddd;"><?php echo $row["content"]; ?></textarea>
          <div class="tips"></div>
        </div>
      </div>
     
      <div class="clear"></div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>