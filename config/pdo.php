<?php 
	
	  $servername = 'localhost';
  	  $database = 'test_2';
	  $username = 'root';
	  $password = '';

	$connection = new PDO("mysql:host=$servername; dbname=$database", $username, $password);
	// echo "Connected to PDO <br>";

 ?>