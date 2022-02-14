<?php
session_start();
include 'config/db.php';
include 'config/functional.php';
?>
<!DOCTYPE html>
	<html lang="en">

		<?php	require_once 'includes/header.php'?>

		<body>

			<div class="click-closed">
			</div>

			<?php	require_once 'includes/navBar.php'?>

			<br><br>

			<!-- Main Page Section -->
			<section>
				<div class="container">
					<div class="row">
                        <div class="col-lg-8">

                        		<?php 

                        		if(isset($_SESSION['successMsg'])) {
                        		    $message = $_SESSION['successMsg'];
                        		    unset($_SESSION['successMsg']);
                        		    echo '<div class="alert alert-success" role="alert">'.$message.'</div>';
                        		}
                        		 ?>
							<form class="form-horizontal" action="./pdfSeatNumbers.php" method="GET">

								<!-- display form inputs here... -->
								<div class="row" style="margin: 0 auto;">
									<div class="col-lg-4">
										<div class="form-group">
											<label for="Course">Course</label>
												<input class="form-control" type="text" name="course" value="<?php echo $_GET['courseCode'] ?>" readonly>

												<?php 
												//get course title
												require_once('./config/db.php');
												$code = $_GET['courseCode'];
												$title = selectCourseTitle($connection,$code);
												 ?>
												<input type="text" name="courseTitle" value="<?php echo $title; ?>" hidden/>
										</div>
									</div>

									<div class="col-lg-4">
										<div class="form-group">
											<label for="Semester">Semester</label>
												<input class="form-control" type="text" name="semester" value="<?php echo $_GET['semester'] ?>" readonly>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="form-group">
											<label for="Session">Session</label>
												<input class="form-control" type="text" name="session" value="<?php echo $_GET['session'] ?>" readonly>
										</div>
									</div>								
								</div>

								<div class="row" style="margin: 0 auto;">
									<div class="col-lg-4">
										<div class="form-group">
											<label for="Date">Date</label>
												<input class="form-control" type="text" name="date" value="<?php echo $_GET['date'] ?>" readonly>
										</div>
									</div>

									<div class="col-lg-4">
										<div class="form-group">
											<label for="Time">Time</label>
												<input class="form-control" type="text" name="time" value="<?php echo $_GET['time'] ?>" readonly>
										</div>
									</div>

									<div class="col-lg-4">
										<div class="form-group">
											<label for="Level">Level</label>
												<input class="form-control" type="text" name="level" value="<?php echo $_GET['level'] ?>" readonly>
										</div>
									</div>
								</div>

								<div class="row" style="margin: 0 auto;">
									<div class="col-lg-4">
										<div class="form-group">
											<label for="Department">Department</label>
												<input class="form-control" type="text" name="department" value="<?php echo str_replace("_"," ",$_GET['department']); ?>" readonly>
										</div>
									</div>

									<div class="col-lg-4">
										<div class="form-group">
											<label for="Venues">Venues</label>
											<select multiple class="form-control" name="venues[]" id="" readonly>
												<?php 
												foreach($_GET['venues'] as $venue){
													echo "<option value='$venue' selected>".str_replace("_"," ",$venue)."</option>";
												}
												 ?>
											</select>
											<!-- <input type="" name="venues" value="" hidden> -->
										</div>
									</div>

									<div class="col-lg-4">
										<label for="Course"></label>
										<div class="form-group">
											<button type="submit" name="btnGeneratePDF" class="btn btn-success">Generate PDF</button>
										</div>
									</div>
								</div>
							</form>
                        </div>
                    </div>
				</div>
			</section>

		<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
			<div id="preloader"></div>


			<?php	require_once 'includes/footer.php'?>

		</body>
	</html>


