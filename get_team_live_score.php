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
$get_team = ($data->team);

$result = mysqli_query($conn,"SELECT * FROM live_score 
		where email='$get_email'  ");

if(mysqli_num_rows($result))
{
	$response["details"] = array();	
	
	while($Alldetails = mysqli_fetch_array($result))
	{
		$details = array();
		$details = $Alldetails;
		$get_run = $Alldetails["field_4"];
		$get_ball  = $Alldetails["field_5"];
		
		
		if (strcmp($get_ball ,"" )==0)
		{
			$get_sr="";
		}
		
		else 
		{
			$get_sr = (($get_run / $get_ball ) * 100);
		}
		$details["get_sr"] =round($get_sr,1);

		
		array_push($response["details"],$details);
	}	
	$response["success"] = 1;
	echo json_encode($response);

}
else
{
	$response["success"] = 0;	
	echo json_encode($response);
}
	

?>