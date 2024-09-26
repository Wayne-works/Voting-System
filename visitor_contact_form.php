<?php
	include 'visitor_includes/session.php';
	include 'includes/conn.php';

	if(isset($_POST['add'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		$comment = $_POST['comment'];

		$sql = "INSERT INTO contacts (firstname, lastname, email, comment) VALUES ('$firstname', '$lastname', '$email', '$comment')";
		if($conn->query($sql)){
			$_conn['success'] = 'Email send successfully';
		}
		else{
			$_conn['error'] = $conn->error;
		}

	}
	else{
		$_conn['error'] = 'Fill up add form first';
	}
	
	header('location: visitor_home.php');
?>