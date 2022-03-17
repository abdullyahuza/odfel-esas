<?php 
include('./config/db.php');
//get all the venues
$venueName = $_GET['venue'];
$venueTable = str_replace(" ","_", $venueName);

$sql = "UPDATE $venueTable SET reg_num=NULL, course_code=NULL";
$sql2 = "UPDATE venues SET status=0 WHERE venueName='$venueName'";

if(mysqli_query($connection, $sql) && mysqli_query($connection, $sql2)){
	session_start();
	$_SESSION['successMsg'] = $venueName." reset successful.";
	header("Location: reset_allocations.php");
}
else{
	session_start();
	$_SESSION['errorMsg'] = $venueName." reset failed.";	
	header("Location: reset_allocations.php");
}
 ?>
