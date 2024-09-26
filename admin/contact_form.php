<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		$comment = $_POST['comment'];

		$sql = "INSERT INTO contacts (firstname, lastname, email, comment) VALUES ('$firstname', '$lastname', '$email', '$comment')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Email send successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}
	
	header('location: home.php');
?>