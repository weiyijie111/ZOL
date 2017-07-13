<?php 
session_start();
$username ="欢迎回来：".$_SESSION["username"]["username"];

	echo "<p style='color:#BCA3A6;font-size:50px'>$username</p>";
