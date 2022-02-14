// make two fields unique at a time
	// ALTER TABLE `votes` ADD UNIQUE `unique_index`(`user`, `email`, `address`);

//populate course_reg
$regNo = '';
for($i=1; $i<50; $i++){
	if($i<10){
		$regNo='U15CS500'.$i;	
	}else{
		$regNo='U15CS50'.$i;
	}
	$sql = "INSERT INTO course_reg (regNo, courseCode)
	VALUES ('$regNo', 'COSC001')";
	if ($conn->query($sql) === TRUE) {
	  echo $i." New record created successfully";
	} else {
	  echo "Error: " . $sql . "<br>" . $conn->error;
	}
}

//populate venues
for($i=1; $i<=25; $i++){
	if($i<10){
		$regNo='U15CS500'.$i;	
	}else{
		$regNo='U15CS50'.$i;
	}
	$sql = "INSERT INTO venueC (seatNo)
	VALUES ('$i')";
	if ($conn->query($sql) === TRUE) {
	  echo $i." New record created successfully";
	} else {
	  echo "Error: " . $sql . "<br>" . $conn->error;
	}
}

function allocateSeatToStudent($venue){
	// $student = getStudent('COSC001'); //random stud
	$conn = new mysqli('localhost', 'root', '', 'test');

	// if(availableSeats($venue) !== 0){
	// 	$seat = randomNum(availableSeats($venue));
	// 	$seat = randomNum(availableSeats($venue));
	// 	$sql = "UPDATE $venue SET regNo='$student', courseCode='COSC001' WHERE seatNo='$seat'";

	// 	if ($conn->query($sql) === TRUE) {
	// 	  echo "Venue allocation successful";
	// 	} else {
	// 	  echo "Error: ".$conn->error;
	// 	}

	// }
	for($i=0; $i<count(allStudentsInCourseArray('COSC001')); $i++){
		$allStudentsInCourseArray = allStudentsInCourseArray('COSC001');
		$student = $allStudentsInCourseArray[$i];	
		if(availableSeats($venue) !== 0){
			$seat = randomNum(availableSeats($venue));
			$sql = "UPDATE $venue SET regNo='$student', courseCode='COSC001' WHERE seatNo='$seat'";

			if ($conn->query($sql) === TRUE) {
			  echo "Venue allocation successful";
			} else {
			  echo "Error: ".$conn->error;
			}

		}
	}

}

$conn = new mysqli('localhost', 'root', '', 'test');
$availableSeatsInVenue = allSeatsInVenueArray($venue);
$i=0;
while(availableSeats($venue)){
	$student = getStudent('COSC001');
	if(checkAllocation($student, $venue)) continue;

	$sql = "UPDATE $venue SET regNo='$student', courseCode='COSC001' 
	WHERE seatNo='$availableSeatsInVenue[$i]'";
	// $result = $conn->query($sql);
	if ($conn->query($sql) === TRUE) {
	  echo "Venue allocation successful";
	} else {
	  echo "Error: ".$conn->error;
	}
	$i=$i+1;
}


$seatID = '';
for($i=1; $i<15; $i++){
	if($i<10){
		$seatID='VA-0'.$i;	
	}else{
		$seatID='VA-'.$i;	
	}
	$sql = "INSERT INTO all_seats (venueID, seatID)
	VALUES ('venueC', '$seatID')";
	if ($conn->query($sql) === TRUE) {
	  echo $i." New record created successfully";
	} else {
	  echo "Error: " . $sql . "<br>" . $conn->error;
	}
}