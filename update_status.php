<?php
/*********************
**** CPanel ******************
*********/

/* Following register will admin login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));

$get_id = ($data->cus_id);
$get_field_1 = ($data->live_status);

if( empty($get_field_1) )
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
		
		if (strcmp($get_field_1 ,"Striker" )==0)
		{
			$get_status = "Live";
		}
		else if (strcmp($get_field_1 ,"NonStricker" )==0)
		{
			$get_status = "Live";
		}
		else if (strcmp($get_field_1 ,"Bowler" )==0)
		{
			$get_status = "Live";
		}
		else{
			$get_status = "Offline";
		}
		
	
		$result = mysqli_query($conn,"UPDATE live_score SET  field_9 = '$get_field_1', 
				field_10= '$get_status' where cus_id='$get_id' ");
												
	// check for empty result
	if($result)
	{
		// success
		$response["success"] = 1;		
		// echoing JSON response
		echo json_encode($response);
		
		
	}
	else 
	{
		// unsuccess
		$response["success"] = 0;		
		// echoing JSON response
		echo json_encode($response);
	}
}
?>