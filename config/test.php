<?php
include 'db.php';
include 'functional.php';

// $venues_array = array("odfel_hall_1","odfel_hall_2");
// $venues_array = "odfel_hall_1";
// checkAllocation($connection,'U15CS01',$venues_array);

$reg_num = '';
for($i=1; $i<50; $i++){
	if($i<10){
		$reg_num='U15CS500'.$i;	
	}else{
		$reg_num='U15CS50'.$i;
	}
	$sql = "INSERT INTO course_reg (reg_num, course_code)
	VALUES ('$reg_num', 'COSC001')";
	if ($connection->query($sql) === TRUE) {
	  echo $i." New record created successfully";
	} else {
	  echo "Error: " . $sql . "<br>" . $connection->error;
	}
}


?>