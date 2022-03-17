<?php 
include('./config/db.php');
//get all the venues
$venueName = $_GET['venue'];
$venueTable = str_replace(" ","_", $venueName);

$sql = "DROP TABLE ".$venueTable."";

$sql2 = "DELETE FROM venues WHERE venueName='$venueName'";

if(mysqli_query($connection, $sql) && mysqli_query($connection, $sql2)){
	session_start();
	$_SESSION['successMsg'] = $venueName." Deleted Successfully.";
	header("Location: reset_allocations.php");
}
else{
	session_start();
	$_SESSION['errorMsg'] = $venueName." Deletion failed.";	
	header("Location: reset_allocations.php");
}
 ?>
