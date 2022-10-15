<?php
/*********************

**** CPanel ******************
*********/

/* Following code will match admin login credentials */

//user temp array
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


// check for post data
$data = json_decode(file_get_contents("php://input"));

$get_email = ($data->email);
$get_team_1 = ($data->team_1);
$get_team_2 = ($data->team_2);
$get_total_run =0; 
$get_total_ball =0; 
$get_total_wicket =0; 

$result = mysqli_query($conn,"SELECT * FROM live_score 
		where email='$get_email' and field_1='$get_team_2' ");

if(mysqli_num_rows($result))
{
	$response["details"] = array();	
	
	while($Alldetails = mysqli_fetch_array($result))
	{
		$details = array();
		$details = $Alldetails;
		$get_team = $Alldetails["field_1"];
		$get_run = $Alldetails["field_4"];
		$get_ball  = $Alldetails["field_5"];
		$get_wick  = $Alldetails["field_8"];
		$get_extra  = $Alldetails["field_8"];
		
		
		$get_total_run = $get_total_run+  $get_run ;
		$get_total_ball = $get_total_ball+  $get_ball ;
		

		$remainder = $get_total_ball % 6;
		$quotient = ($get_total_ball - $remainder) / 6;


		$get_total_wicket = $get_total_wicket +  $get_wick ;

	}	
			
		$details["get_team_2"] =$get_team;
		$details["get_total_run"] =$get_total_run;
		$details["get_total_wicket"] =$get_total_wicket;
		$details["get_total_ball"] =$get_total_ball;
		$details["remainder"] =$remainder;
		$details["quotient"] =$quotient;
		
array_push($response["details"],$details);

	$response["success"] = 1;
	echo json_encode($response);

}
else
{
	$response["success"] = 0;	
	echo json_encode($response);
}
	

?>