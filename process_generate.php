<?php 
//created by Auwal jaizz
	error_reporting();
	include 'config/db.php';
    include 'config/functional.php';

	if (isset($_POST['btnGenerate'])) {
		# code...
		$venues= $_POST['venue'];
        $course = $_POST['course'];
        $semester = $_POST['semester'];
        $session = $_POST['session'];
        $date = date("d/m/Y",strtotime($_POST['date']));
        $time = date("g:i A",strtotime($_POST['time']));
        $level= $_POST['level'];
        $department = $_POST['department'];
        $venues_array = array();
        $allVenues = allVenues($connection);


        foreach ($venues as $venue) {
            //if venue status is not true allocate
            if(!checkVenueStatus($connection, $venue) /*|| availableSeatsInVenue($connection, str_replace(" ","_",$venue)) > 1*/){
                //Replacing Venue Name Wite Spaces with underscore
                array_push($venues_array,str_replace(" ","_",$venue));
            }else{
                // echo "Venue already allocated.";
                // return 0;
                sleep(1);
                header("Location: generateSeatNumbers.php");
                session_start();
                $_SESSION['errorMsg'] = "Allocation Failed, selected venue(s) occupied, reset allocation first.";
                exit(1);
            }
        } 
        $course = $_POST['course'];
		$allStudents = allStudentsInCourseArray($connection,$course);//getting all the students
       
        //allocation
        if(count($allStudents ) > 0){
            foreach ($venues_array as $venue) {
               // allocateStudents($connection,$allStudents,$venue,$course,$venues_array);    
               allocateStudents($connection,$allStudents,$venue,$course,$allVenues);    
                //set status to true
               $venue = str_replace("_"," ",$venue);
               if(availableSeatsInVenue($connection, str_replace(" ","_",$venue)) < 1){
                $sql = "UPDATE venues 
                        SET status=1
                        WHERE venueName='$venue'";
                
                $connection->query($sql);
               }
            }

            session_start();
            $_SESSION['successMsg'] = "Allocation Successful.";
            $venues_array = http_build_query(array('venues'=>$venues_array));
            header("Location: viewAllocation.php?courseCode=$course&semester=$semester&session=$session&date=$date&time=$time&level=$level&department=$department&$venues_array");
        }
        else{
            session_start();
            $_SESSION['errorMsg'] = "zero registered students in the selected course.";
            header("Location: generateSeatNumbers.php");   
        }

        
	}

 ?>