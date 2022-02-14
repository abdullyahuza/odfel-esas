<?php 
include './config/db.php';

	$regNo = '';
	for($i=1; $i<=80; $i++){
		if($i<10){
			$regNo='U16CS500'.$i;	
		}else{
			$regNo='U16CS50'.$i;
		}
		$sql = "INSERT INTO course_reg (reg_num, name, course_code, course_title)
		VALUES ('$regNo', 'Abdull Yahuza $i','COSC002','Introduction to computing IV')";
		if ($connection->query($sql) === TRUE) {
		  echo $i." New record created successfully";
		} else {
		  echo "Error: " . $sql . "<br>" . $connection->error;
		}
	}
 ?>