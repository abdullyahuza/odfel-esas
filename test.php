<pre>
<?php 
include('./config/db.php');
include('./config/functional.php');

//populate course_reg
$regNo = '';
for($i=1; $i<=100; $i++){
    if($i<10){
        $regNo='U15CS500'.$i;   
    }else{
        $regNo='U15CS50'.$i;
    }
    $sql = "INSERT INTO course_reg (reg_num, name, course_code, course_title)
    VALUES ('$regNo','Abdull Yahuza', 'COSC001', 'Introduction to computer 001')";
    if ($connection->query($sql) === TRUE) {
      echo $i." New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
 ?>
</pre>