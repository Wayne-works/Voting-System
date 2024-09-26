<?php
	session_start();
	include 'includes/conn.php';

	if(!isset($_SESSION['visit']) || trim($_SESSION['visit']) == ''){
		header('location: visitor_home.php');
	}
	
	$sql = "SELECT * FROM admin WHERE id = '".$_SESSION['admin']."'";
	$query = $conn->query($sql);
	$user = $query->fetch_assoc();
	
?>