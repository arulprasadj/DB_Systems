<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<style>
h5{
text-align:center; 

}
#ld1{
text-align:center; 
    border: 1px solid black;
	background-color: #f1f1c1
}
button{
	
}

</style>




<body >
<br>
<br>
<br>

<div  class ="container" style="height:250px;  width:350px;" id="ld1">
<br>
<h5>LOGIN</h5>
<form action="" method="POST">
<p>USER_ID : <input type=text name="userid" ></input></p>
<br>
<p>PASSWORD : <input type ="password" name="pswd" ></input></p>
<br>	
<button type="submit" value="login" name="submit">LOGIN</button>


<?php
//header('Location:default.php#d2');

$servername = "localhost";
$username = "root";
$password = "";
$conn = new mysqli($servername, $username, $password,'online_loan');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully <br>";
if(isset($_POST['userid']) && isset($_POST['pswd']))
{
	$user=$_POST['userid'];
	$pass=$_POST['pswd'];
	$sql1 = "select *,count(*) as cnt from user where user_id='$user'";
	
	$result1	= $conn -> query($sql1);
    $getrows=$result1->fetch_assoc();
	$no=$getrows['cnt'];
		if($no==0)
		{
			echo "USER DOEsNT EXIST";
		}
		else
		{

		
			$result2 = $conn -> query($sql1);
		while($tuple1= $result2-> fetch_assoc())
	    {
			$dbusername = $tuple1['user_id'];
			$dbpassword = $tuple1['password'];
			$str =substr($dbpassword,0,4);
			echo "$str";
			if($user==$dbusername && $pass==$dbpassword) 
			{
				//$_SESSION['uname'] = $username;
				if($str=="user")
				{
				echo "logged in successfully :P";
				header('Location:user.php');
				}
				else
				{
					echo "logged in successfully :P";
				header('Location:admin.php');
				}
			} 
			else 
			{
				echo "incorrect password";
			}
		}
		}
		
	
}
else 
{
	die("dont leave the fields blank");
}

?>
</form>
</div>

</body>
</html>

