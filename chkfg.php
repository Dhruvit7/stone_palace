<?php
$conn=mysqli_connect('localhost','root','','stone_palace');
$query="SELECT * FROM `users`";
$res=mysqli_query($conn,$query);

while($row=(mysqli_fetch_assoc($res)))
 {
	 if($row['email']==$_POST['name'])
	 {
		 echo "<script>window.location.assign('reset-password.php');</script>";
		 $_SESSION["emaill"] = $_POST['name'];
		 $chklogin++;
	 }
     else{
         echo "<script>window.location.assign(forgot-password.php);</script>";
     }
 }