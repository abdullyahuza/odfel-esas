<?php
session_start();
include 'config/db.php';
include 'config/functional.php';
?>

<!DOCTYPE html>
	<html lang="en">

		<?php	require_once 'includes/header.php';?>

		<body>

			<div class="click-closed">
			</div>

			<?php	require_once 'includes/navBar.php';?>

			<div class="container-fluid">
	            <main>
             		<div class="card-body">
             			<div class="row">
             				<div class="col-sm-8" style="margin: 0 auto;">

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


             					<div class="table-responsive">
             					    <table class="table table-bordered" id="dataTable" width="100%">
             					        <thead>
             					            <tr>
             					                <th><center>SN</center></th>
             					                <th><center>Venue</center></th>
             					                <th><center>Reset</center></th>
             					                <th><center>Delete Venue</center></th>
             					            </tr>
             					        </thead>

             					        <tbody>
             					        	<?php 
             					        	$sql = mysqli_query($connection,"SELECT * FROM venues ORDER BY venueName");
             					        	$i=1;
             					        	while ($row=mysqli_fetch_array($sql,MYSQLI_ASSOC)) {
             					        	?>
             					                <tr>
             					                	<td><?php echo $i; ?></td>
             					                    <td>
             					                        <?php echo strtoupper($row['venueName']); ?>
             					                        <span style="font-size: 14px;">(
             					                        	<?php 
             					                        	$total = count(allSeatsInVenueArray($connection, str_replace(" ","_",$row['venueName'])));
             					                        	$available = availableSeatsInVenue($connection, str_replace(" ","_",$row['venueName']));
             					                        	echo $available." of ".$total;
             					                        	 ?> Seats free )
             					                        </span>
             					                    </td>
             					                    
             					                    <td>
             					                        <center>
             					                            <a class="btn btn-primary btn-sm delete" href="./reset.php?venue=<?php echo $row['venueName'];?>">
             					                            	Reset
             					                        	</a>
             					                        </center>
             					                    </td>

             					                    <td>
             					                        <center>
             					                            <a class="btn btn-danger btn-sm delete" href="./delete_venue.php?venue=<?php echo $row['venueName'];?>">
             					                            	Delete
             					                        	</a>
             					                        </center>
             					                    </td>
             					                </tr>
             					            <?php 
             					            $i++;
             					            } 
             					            ?>
             					        </tbody>
             					    </table>
             					</div>
             				</div>
             			</div>    
             		</div>
	            </main>
            </div>
  

		<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
			<div id="preloader"></div>


			<?php	require_once 'includes/footer.php';?>

		</body>
	</html>
