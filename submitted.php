<?php
	$conn = mysqli_connect('localhost', 'root', '', 'hoteldb');
	$name = $_POST['name'];
	$email = $_POST['email'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	print_r($_POST);
	$que = "INSERT INTO feedback VALUES('$name', '$email', '$subject','$message')";
	$res = mysqli_query($conn, $que);
	print_r($res);
	if($res)
		header('location: contact.php?done=1');
	else
		header('location: contact.php?done=0');
?>