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

                        	if(isset($_SESSION['errorMsg'])) {
                        	    $message = $_SESSION['errorMsg'];
                        	    unset($_SESSION['errorMsg']);
                        	    echo '<div class="alert alert-danger" role="alert">'.$message.'</div>';
                        	}
                        	 ?>

							<form class="form-horizontal" action="process_generate.php" method="POST">

								<!-- display form inputs here... -->
								<div class="row">
								
									<div class="col-lg-4">
										<div class="form-group">
											<label for="Semester">Semester</label>
											<select class="form-control" name="semester" id="Semester">
												<option value="First Semester">First Semester</option>
												<option value="Second Semester">Second Semester</option>												
											</select>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="form-group">
											<label for="Session">Session</label>
											<select class="form-control" name="session" id="Session">
												<!-- get all the Subjects from the database here -->
												<option value="2020/2021">2020/2021</option>
												<option value="2021/2022">2021/2022</option>
												<option value="2022/2023">2022/2023</option>
												<option value="2023/2024">2023/2024</option>
												<option value="2024/2025">2024/2025</option>
												<option value="2025/2026">2025/2026</option>
												<option value="2026/2027">2026/2027</option>
												<option value="2027/2028">2027/2028</option>
												<option value="2028/2029">2028/2029</option>
												<option value="2029/2030">2029/2030</option>
												
											</select>
										</div>
									</div>
									
									<div class="col-lg-4">
										<div class="form-group">
											<label for="Course">Course</label>
											<select style="font-size:14px;" class="form-control" name="course" id="Course">
												<!-- get all the Courses from the database here -->
												<?php 	

													$queryCourse = "SELECT `courseCode` FROM `courses`";

													$result = $connection->query($queryCourse);

														while ($row = mysqli_fetch_array($result)) 
														{
															$students = numberOFStudentsInCourse($connection, $row['courseCode']);
															echo 
																'<option style="font-size:14px;" value="' . $row["courseCode"] . '">' 
																	. $row["courseCode"] .' ('.$students.' students)'.
																'</option>';	
														}
													

												 ?>																					
											</select>
										</div>
									</div>
								</div>
									<div class="row">
									<div class="col-lg-4">
										<div class="form-group">
											<label for="examDate">Exam Date</label>
											<input type="date" name="date" class="form-control" id="examDate" required>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="form-group">
											<label for="examTime">Exam Time</label>
											<input type="time" name="time" class="form-control" id="examTime" value="07:00" min="00:00" max="19:00">
										</div>
									</div>
										<div class="col-lg-4">
											<div class="form-group">
											<label for="Session">Level</label>
											<select class="form-control" name="level" id="Session">
												<option value="100">100</option>
												<option value="200">200</option>
												<option value="300">300</option>
												<option value="400">400</option>
											</select>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-lg-4">
											<div class="form-group">
											<label for="Session">Department</label>
											<select class="form-control" name="department" id="Session">
												<option value="Accountancy">Accountancy</option>
												<option value="Bussiness_Admin">Bussiness Admin</option>
												<option value="Computer_Science">Computer Science</option>
												<option value="Mass_Communication">Mass Communication</option>
												<option value="Public_Admin">Public Admin</option>
											</select>
										</div>
									</div>

									<div class="col-lg-6">
										<div class="form-group" style="width:100%;">
											<label for="Venue">Venue</label>
											<select style="height: 150px;" multiple class="form-control" name="venue[]" id="" required >
												<!-- get all the Courses from the database here -->
										
												<?php 	

													$queryVenues = "SELECT * FROM venues ORDER BY venueName";

													$result = mysqli_query ($connection,$queryVenues);

														while ($row = mysqli_fetch_array($result)) 
														{
															$available = availableSeatsInVenue($connection, str_replace(" ","_",$row['venueName']));
															$total = count(allSeatsInVenueArray($connection, str_replace(" ","_",$row['venueName'])));
															echo '
															<option style="font-size:14px;" value="' . strtolower($row["venueName"]) . '">'
															 .$row["venueName"].' ('.$available.' / '.$total.' seats free)'. 
															'</option>';	
														}
													

												 ?>										

											</select> 
											
										</div>				

									</div>
									
									</div><!--end second row-->
									<div class="row">
										<div class="col-lg-4"></div>
										<div class="col-lg-4"></div>
									<div class="col-lg-4">
										<button name="btnGenerate" class="btn btn-success">Generate</button>
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


