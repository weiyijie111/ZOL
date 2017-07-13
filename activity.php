<?php
	include "util/dbutil.php";
	// 查询新闻表格
	$sql = "select * from activity";

	$result = mysqli_query($conn,$sql);

	if(!$result){
		print_r(mysqli_error($conn));
	};
  
	$newsArray = array();
	while($row = mysqli_fetch_array($result,MYSQL_ASSOC)){
		array_push($newsArray,$row);
	}

	echo json_encode($newsArray);