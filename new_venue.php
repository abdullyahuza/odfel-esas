<?php
session_start();
include 'config/db.php';
?>
<!DOCTYPE html>
	<html lang="en">

		<?php	require_once 'includes/header.php';?>

		<body>

			<div class="click-closed">
			</div>

			<?php	require_once 'includes/navBar.php';?>

			     <div class="container-fluid">
                 <div class="row">
          <div class="col-md-12" style="margin-top: 50px;">
            	<?php 

            	if(isset($_SESSION['errorMsg'])) {
            	    $message = $_SESSION['errorMsg'];
            	    unset($_SESSION['errorMsg']);
            	    echo '<div class="alert alert-danger" role="alert">'.$message.'</div>';
            	}
            	 ?>


            	 <?php 

            	 if(isset($_SESSION['successMsg'])) {
            	     $message = $_SESSION['successMsg'];
            	     unset($_SESSION['successMsg']);
            	     echo '<div class="alert alert-success" role="alert">'.$message.'</div>';
            	 }
            	  ?>
            <div class="card">
              <div class="card-header text-light text-center bg-success" style="background-color:; font-size: 18px;"><span class="fa fa-form"></span>Create New Venue</div>
                <div class="card-body">
                    <form action="process_venue.php" method="POST" role="form">
                    <div class="row  ">
                    <div class="col-lg-4">
										<div class="form-group">
											<label for="venue">Venue name</label>
											<input type="text" name="ven" class="form-control"  required>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="form-group">
											<label for="capacity">Capacity</label>
											<input type="text" name="capacity" class="form-control"  required>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="form-group">
											<label for="code">Code</label>
											<input type="text" name="code" class="form-control"  required>
										</div>
									</div>

                      <div class="form-group col-md-4 offset-sm-4">
                        <button class="form-control btn btn-success" name="new_venue" type="submit">Submit</button>
                      </div>
                    </form>


              </div>
             
            
          </div>
          
        </div>

      </div>

                
            </div>
  

		<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
			<div id="preloader"></div>


			<?php	require_once 'includes/footer.php';?>

		</body>
	</html>
