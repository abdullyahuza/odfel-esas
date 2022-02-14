<?php 

	// Create connection
	$connection = new mysqli('localhost', 'root', '', 'test_2');

	// Check connection
	if ($connection->connect_error) {
	  die("Connection failed: " . $connection->connect_error);
	}

 ?>