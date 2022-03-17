<?php 
	
	  $servername = 'localhost';
  	  $database = 'test';
	  $username = 'root';
	  $password = '';

	$connection = new PDO("mysql:host=$servername; dbname=$database", $username, $password);
	// echo "Connected to PDO <br>";

 ?>