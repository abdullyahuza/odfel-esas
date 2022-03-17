<?php 

	//GET ALL THE SEATS THAT ARE AVAILABLE IN A VENUE AND STORE THEM IN ARRAY
	function availableSeatsInVenueArray($dbconn, $venue){
		$seats_in_venue = array(); //array to keep all seat_number in the venue.
		$sql = "SELECT seat_number FROM $venue WHERE reg_num IS NULL AND course_code IS NULL";
		$result = $dbconn->query($sql);
		
		while($row = mysqli_fetch_array($result)){
		    array_push($seats_in_venue, $row['seat_number']);  //populate the array; $seats_in_venue
		}

		return $seats_in_venue;

	}

	//GET ALL THE SEATS IN A VENUE
	function allSeatsInVenueArray($dbconn, $venue){
		$seats_in_venue = array(); //array to keep all seat_number in the venue.
		$sql = "SELECT seat_number FROM $venue";
		$result = $dbconn->query($sql);
		
		while($row = mysqli_fetch_array($result)){
		    array_push($seats_in_venue, $row['seat_number']);  //populate the array; $seats_in_venue
		}

		return $seats_in_venue;

	}

	//GET ALL STUDENTS TAKING A COURSE AND RETURN THEIR REG NO. IN AN ARRAY
	function allStudentsInCourseArray($dbconn, $course_code){
		$users_in_course = array(); //array to keep all students in the course.
		$sql = "SELECT reg_num FROM course_reg WHERE course_code='$course_code'";
		$result = $dbconn->query($sql);
		
		while($row = mysqli_fetch_array($result)){
		    array_push($users_in_course, $row['reg_num']);  //populate the array; $users_in_db
		}

		if(count($users_in_course) > 1) return $users_in_course;

		return array(); //RETRUN AN EMPTY ARRAY
	}

	//GET THE NUMBER OF STUDENTS TAKING A COURSE
	function numberOFStudentsInCourse($dbconn, $course_code){
	    return count(allStudentsInCourseArray($dbconn, $course_code));
	}
	
	//CHECK ALLOCATION STATUS OF A PARTICULAR STUDENT IN A PARTICULAR VENUE
	function checkAllocation($dbconn, $student, $venue, $course_code){
		$sql = "SELECT COUNT(*) AS total FROM $venue WHERE reg_num='$student' AND course_code='$course_code'";
		$result = $dbconn->query($sql);
		$count=mysqli_fetch_assoc($result);
		$status = intval($count['total']);
		
		return $status > 0 ? true : false;	
	}

	//CHECK ALLOCATION STATUS OF A PARTICULAR STUDENT ACROSS ALL VENUES
	function checkAllocationInAllVenues($dbconn, $student, $allVenues, $course_code){
		// $allVenues = allVenuesArray();
		$status = false;

		foreach($allVenues as $venue){
			if(checkAllocation($dbconn, $student, $venue, $course_code)){
				$status= true;
				return $status;	//STOP CHECKING
			}	
		}
		return $status;
	}

	//GET ALL THE AVAILBLE SEATS IN A VENUE COUNT
	function availableSeatsInVenue($dbconn, $table){

	    $sql = "SELECT COUNT(*) AS total FROM $table WHERE reg_num is NULL";
	    $result = $dbconn->query($sql);
	    $count=mysqli_fetch_assoc($result);
	    
	    return intval($count['total']);
	}

	//ALLOCATE SEAT TO ONE STUDENT
	function allocateStudent($dbconn, $student, $venue, $course_code){
		if($student === '') return 0;
		$freeSeats = availableSeatsInVenueArray($dbconn,$venue);	//array
		$seat_number = null;
		if(count($freeSeats) >= 1){
			$seat_number = $freeSeats[rand(0,count($freeSeats)-1)]; //random seat base on availble seats
		}else{
			$seat_number = 1;
		}
		$sql = "UPDATE $venue 
				SET reg_num='$student', course_code='$course_code'
				WHERE seat_number='$seat_number' AND course_code IS NULL AND reg_num IS NULL";
		
		if ($dbconn->query($sql) === TRUE) {
		  return TRUE;
		} else {
		  return FALSE;
		}
	}	
	
	//ALLOCATE SEAT TO MANY STUDENTS
	function allocateStudents($dbconn, $allStudents, $venues, $course_code, $venuescheck){
		if(count($allStudents) < 1) return 0;	//stop allocation when students array is empty

		for($i=0;$i<count($allStudents);$i++){
			if(checkAllocationInAllVenues($dbconn, $allStudents[$i], $venuescheck, $course_code) !== TRUE){
				allocateStudent($dbconn, $allStudents[$i], $venues, $course_code);
			}
		}

	}	
	//Select Course Title from Course Reg table
	function selectCourseTitle($dbconn,$course_code){
		$sql = "SELECT courseTitle FROM courses WHERE courseCode = '$course_code'";
		$result = $dbconn->query($sql);
		while ($row=mysqli_fetch_array($result)) {
			$dbtitle = $row['courseTitle'];
		}
		return $dbtitle;
	}
	//GET ALLOCATED SEAT NUMBERS FOR ALL VENENUS
	function getAllocatedSeatNumber($dbconn,$venue,$course_code){
		$sql = "SELECT  seat_number FROM odfel_hall_1 WHERE course_code='$course_code'";
		$result = $dbconn->query($sql);
		while($row=mysqli_fetch_assoc($result)){
			$dbs = $row['seat_number'];
		}
		return $dbs;
	}

	//CHECK ALLOCATION STATUS OF A VENUE
	function checkVenueStatus($dbconn, $venue){
	    $sql = "SELECT status FROM venues WHERE venueName='$venue';";
	    $result = $dbconn->query($sql);
	    $row = mysqli_fetch_assoc($result); 
	    $status = $row['status'];

	    return $status; 
	}
	
	function allVenues($dbconn){
		$all_venues = array();
		$sql = "SELECT venueName FROM venues";
		$result = $dbconn->query($sql);
		
		while($row = mysqli_fetch_array($result)){
		    array_push($all_venues, str_replace(" ","_",$row['venueName']));  //populate the array; $seats_in_venue
		}

		return $all_venues;	
	}
 ?>