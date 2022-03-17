<?php 

	// Create connection
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
	$connection = new mysqli('localhost', 'root', '', 'test');

	// Check connection
	if ($connection->connect_error) {
	  die("Connection failed: " . $connection->connect_error);
	}

 ?>