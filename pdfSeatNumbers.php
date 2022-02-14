<?php 
	

	if (isset($_GET['btnGeneratePDF'])) 
	{

		$schoolName = "OPEN DISTANCE AND FLEXIBLE e-LEARNING";
		$session = $_GET['session'];
		$semester = $_GET['semester'];
		$departmentName = $_GET['department'];
		$level = $_GET['level'];
		$courseTitle = $_GET['courseTitle'];
		$courseCode = $_GET['course'];

		$date = $_GET['date'];
		$time = $_GET['time'];
		$venues = $_GET['venues'];
		$venues_display = array();
		foreach($venues as $venue){
			array_push($venues_display, strtoupper(str_replace("_", " ", $venue)));
		}

		// include the library used for pdf generation
		require './lib/fpdf/fpdf.php';
		require_once './config/db.php';
		
		// extend the fpdf class to enhance functionalities

		class myPdf extends FPDF
		{

			const A4_WIDTH = 210;
			// define the header section of the document
			
			function header(){

			}

			
			
		    function centreImage($img) {
				$this->SetY(3);
		        $this->Image($img, (self::A4_WIDTH - 20) / 2,3,20,19);
		        $this->Ln(20);
		    }

		    function HeadSection($schoolName, $session, $semester, $departmentName, $level, $courseCode, $courseTitle){
		    	$this->SetFont('Arial', 'B', 14);

				$w = $this->GetStringWidth($schoolName) + 6;

				// add the school name to the document centered on the screen
		    	$this->SetFont('Arial', 'B', 14);
				$this->SetX((210-$w) / 2);
				$this->Cell($w, 10, 'KADUNA POLYTECHNIC', 0, 0, 'C');
				$this->Ln(6);

		    	$this->SetFont('Arial', 'B', 12);
				$this->SetX((210-$w) / 2);
				$this->Cell($w, 10, $schoolName, 0, 0, 'C');
				// insert a line-break after the school name
				$this->Ln(6);


				// set the font style to be used for the faculty name 
				$this -> SetFont('Arial', 'B', 12);

				$w = $this -> GetStringWidth($departmentName) + 6;
				$this -> SetX((210-$w) / 2);

				// set the name of the department
				$this -> Cell($w, 10, 'Department of ' . $departmentName . ' ('.$level.' Level)', 0, 0, 'C');
				$this->Ln(6);

				$w = $this -> GetStringWidth($session) + 6;
				$this -> SetX((210-$w) / 2);

				// add the name of the semester, session examination
				$this -> SetFont('Arial', 'B', 11);
				$this -> Cell($w, 10, $semester.' Examination, ' . $session.' Academic Session.', 0, 0, 'C');
				$this->Ln(8);

				$w = $this -> GetStringWidth($courseTitle) + 6;
				$this -> SetX((210-$w) / 2);

				// add the name of the course and code
				$this -> SetFont('Arial', 'B', 11);
				$this -> Cell($w, 9, 'SEATING ARRANGEMENT FOR: '.$courseCode.' ('.$courseTitle.')', 0, 1, 'C');
		    }

		    function scheduleSection($date, $time, $venues){
		    	$this -> SetX(210/6);
				$this->SetFont('Arial','B',10);
				$this->Cell(20.75,10,'Date:', 0, 0,'L');
				$this->Cell(60.75,10,$date, 0, 0,'L');
				$this->Cell(20.75,10,'', 0, 0,'L');
				$this->Cell(20.75,10,'Time:', 0, 0,'L');
				$this->Cell(60.75,10,$time, 0, 1,'L');

		    	$this -> SetX(210/7);
				$this->SetFont('Arial','B',9);
				$this->Cell(15,5,'Venues: ', 0, 0, 'L');

				$venues = implode(', ', $venues);
				$w = $this -> GetStringWidth($venues) + 6;
				$this -> SetX((210-$w) / 2);
				$this->Cell(100,5,$venues, 0, 1,'L');
				
				$this->Ln();
		    }

			function footer()
			{

				// pull the text to the end of the page
				$this -> SetY(-15);

				// set the style of the footer text
				$this -> SetFont('Arial', '', 8);

				// set the page number of all the pages
				$this -> Cell(0, 10, 'Page ' . $this -> PageNo() . '/{nb}', 0, 0, 'C');

			}


			function TableHead()
			{

				$this->SetFont('Times', 'B', 9);
				$this->SetX(210/10);
				$this->Cell(8,6,'SN',1,0,'C');
				$this->Cell(30,6,'REG NO',1,0,'C');
				$this->Cell(80,6,'NAME',1,0,'C');
				$this->Cell(20,6,'SEAT NO',1,0,'C');
				$this->Cell(30,6,'ATTENDACE',1,0,'C');

				$this -> Ln();

			}

			function viewAllocation($conn,$venue,$courseCode){
				$this->SetFont('Times','',12);
				$sql = "SELECT s.reg_num, s.course_code, s.seat_number, cr.name\n"

				    . "FROM $venue s\n"

				    . "JOIN course_reg cr\n"

				    . "ON cr.reg_num = s.reg_num AND cr.course_code=s.course_code AND s.course_code='".$courseCode."';";
				$result = $conn->query($sql);
				$i=1;
				while($row = mysqli_fetch_array($result)){
						$this->SetFont("Times",'',10);
						$this->SetX(210/10);
						$this->Cell(8,6,$i,1,0,'C');
						$this->Cell(30,6,$row['reg_num'],1,0,'C');
						$this->Cell(80,6,$row['name'],1,0,'L');
						$this->Cell(20,6,$row['seat_number'],1,0,'C');
						$this->Cell(30,6,'',1,0,'C');
					    $this->Ln();
					    $i++;		
				}
			}

			function VenueHead($venue){
				$this->SetFont('Arial', 'B', 10);
				$this->SetX(210/10);
				$this->Cell(168,8,strtoupper(str_replace("_"," ",$venue)),1,0,'C');
				
				$this -> Ln();
			}

		}
		// end class


		$pdf = new myPdf();

		// $pdf -> bodyTable();
		foreach($venues as $venue){
			$pdf -> AliasNbPages();
			
			$pdf -> AddPage('P');
			$pdf->centreImage("./img/kadp.png");
			$pdf->HeadSection($schoolName, $session, $semester, $departmentName, $level, $courseCode, $courseTitle);
			$pdf->scheduleSection($date, $time, $venues_display);
			
			$pdf->VenueHead($venue);
			$pdf ->TableHead();
			$pdf->viewAllocation($connection, $venue, $courseCode);
		}

		$pdf -> Output();
		
	}
	else
	{
		// redirect the user to the view seat numbers page
		header("location: viewSeatNumbers.php");

	}

	


			

 ?>