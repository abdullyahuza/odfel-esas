<?php
include "./config/db.php";


 if(isset($_POST['new_venue'])){
     
    $venue = strtolower($_POST["ven"]);
    $capacity = $_POST["capacity"];
    $venueCode = $_POST['code'];
    // insert
	$ven_sql = "INSERT INTO venues(venueName,capacity,code) VALUES('$venue','$capacity','$venueCode');";
    
    if ( mysqli_query($connection,$ven_sql)) 
    {
        // create table with new venue name
        $venue = str_replace(" ","_",$venue);
        $sql_create_tbl = "CREATE TABLE $venue(
            id INT(5) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            seat_number VARCHAR(20),
            reg_num VARCHAR(20) NULL,
            course_code VARCHAR(20) NULL
              )";
        if(mysqli_query($connection,$sql_create_tbl)){
            //populate the newly created venue
            for($i = 1; $i <= $capacity; $i++){
                $seat_num = $venueCode.'-'.$i;
                $sql_insert_ven = "INSERT INTO $venue(seat_number)VALUES('$seat_num')";
                $connection->query($sql_insert_ven);
            }

            session_start();
            $venueName = str_replace("_"," ", $venue);
            $_SESSION['successMsg'] = $venueName." created successfully.";
            header("Location: new_venue.php");
        }
        else{
            session_start();
            $_SESSION['errorMsg'] = "Error creating table";
            header("Location: new_venue.php");
        }


    }
    else{
        session_start();
        $_SESSION['errorMsg'] = "Error creating table";
        header("Location: new_venue.php");
    }
 }
 

?>