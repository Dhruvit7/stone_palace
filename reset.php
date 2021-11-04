<?php
$email = $_SESSION['emaill'];
$pwd= $_POST['pwd'];
$conn=mysqli_connect('localhost','root','','stone_palace');
$query="SELECT * FROM `users`";
$res=mysqli_query($conn,$query);

while($row=(mysqli_fetch_assoc($res)))
 {
        $query="UPDATE users SET pass = '$pwd' WHERE email = '$email' ";
        $res=mysqli_query($conn,$query);
        if($res){
        echo "<script>window.location.assign('userlogin.php');</script>";
        }
        else{
         echo "<script>window.location.assign(forgot-password.php);</script>";
        }
}