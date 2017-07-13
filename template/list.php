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

<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.html"> 添加内容</a> </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">ID</th>        
        <th>图片</th>
        <th>标题</th>
        <th width="10%">更新时间</th>
        <th width="310">操作</th>
      </tr>
         
      <?php 
          include "../util/dbutil.php";
          $num = $_GET["num"];

          session_start();
          $_SESSION["num"]=$num;

           if($num==1){
              $sql = "select nid id,nimg img,ntitle title,ncreateDate createDate from news";
           }
           if($num==2){
              $sql = "select jid id,jimg img,jname title,jcreateDate createDate from institution";
           }
           if($num==3){
              $sql = "select hid id,himg img,htitle title,hcreateDate createDate from activity";
           }
          
          $result = mysqli_query($conn,$sql);
          
          $i =1;
          while($row = mysqli_fetch_array($result,MYSQL_ASSOC)){
              $img = "../images/".$row["img"];
              $title = $row["title"];
              $time = $row["createDate"];
              $id = $row["id"];
            
              echo "<tr>
                        <td style='text-align:left; padding-left:20px;'><input type='checkbox' name='' value='' />$i</td>
                        <td width='10%'><img src='$img' width='70' height='50' /></td>
                        <td>$title</td>
                        <td>$time</td>
                        <td>
                            <div class='button-group'>
                              <a class='button border-main' href='modify.php?id=$id'><span class='icon-edit'></span> 修改</a>
                              <a class='button border-red' href='javascript:void(0)' onclick='return del($id,$num,1)'><span class='icon-trash-o'></span> 删除</a>
                            </div>
                        </td>
                     </tr>";

              $i++;
          }
       ?>

      <tr>
        <td colspan="8">
            <div class="pagelist">
                  <a href="">上一页</a>
                  <span class="current">1</span>
                  <a href="">  2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a></div></td>
      </tr>

    </table>
  </div>
</form>
<script type="text/javascript">
//删除
function del(id,num,iscid){
	if(confirm("您确定要删除吗?")){
        window.location.href="../php/delete.php?id="+id+"&num="+num;
	}else{
        alert(1);
    }
}
</script>
</body>
</html>