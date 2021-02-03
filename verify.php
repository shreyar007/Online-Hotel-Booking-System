<?php 
	session_start();
	$db=mysqli_connect('localhost','root','','hoteldb') or die('could not connect');
	if(isset($_POST['submit'])){
		$firstname=mysqli_real_escape_string($db,$_POST['firstname']);
		$lastname=mysqli_real_escape_string($db,$_POST['lastname']);
		$email=mysqli_real_escape_string($db,$_POST['email']);
		$password=mysqli_real_escape_string($db,$_POST['password']);
		$query="SELECT * FROM signup WHERE email='$_POST[email]'";
		$sql=mysqli_query($db,$query);
		$num=mysqli_num_rows($sql);
		if ($num>0) {
			header("location:registration.php?message=invalid_email");
			exit();
		}
		else{
			$hashedPwd=password_hash($password,PASSWORD_DEFAULT);
			$query="INSERT INTO signup (firstname,lastname,email,password) VALUES ('$firstname','$lastname','$email','$hashedPwd');";
			$result=mysqli_query($db,$query);
			header("location:registration.php?message=registration_successful");
			exit();
			}
		}
	else if(isset($_POST['submit1'])){
	$email=mysqli_real_escape_string($db,$_POST['email']);
	$password=mysqli_real_escape_string($db,$_POST['password']);
	$query="SELECT * FROM signup WHERE email='$_POST[email]'";
	$sql=mysqli_query($db,$query);
	$num=mysqli_num_rows($sql);
	if ($num<1) {
 		header("location:registration.php?message=invalid_email");
 		exit();
	}
	else{
		if ($row=mysqli_fetch_assoc($sql)) {
			$pwdCheck=password_verify($password,$row['password']);
			if ($pwdCheck==false) {
				header("location:registration.php?message=invalid_password");
				exit();
			}
			else if($pwdCheck==true) {
				$_SESSION['email']=$row['email'];
				header("location:reservation.php");
				exit();
			}
			else{
				header("location:registration.php?message=invalid_email");
				exit();
			}
		}
	
	}
}
	else{
		header("location:reservation.php");
		exit();
	}
?>

