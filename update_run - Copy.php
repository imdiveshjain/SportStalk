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

$get_email = ($data->email);
$get_id =($data->cus_id);
$get_field_1 = ($data->field_4);
$get_field_7 =0;
$get_field_6 =0;
$get_ball= 1;  // count inc ball count 
$get_out_count = 0;  // Out Count 


if( empty($get_field_1) )
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
		
		if (strcmp($get_field_1 ,"4" )==0)
		{
			$get_field_6 = 1;
		}
		else if (strcmp($get_field_1 ,"6" )==0)
		{
			$get_field_7 = 1;
		}
		else if (strcmp($get_field_1 ,"zero" )==0)
		{
			$get_field_1 = 0;
		}
		else if ((strcmp($get_field_1 ,"noball" )==0) or  (strcmp($get_field_1 ,"wide" )==0) )
		{
			$get_field_1= 0;
			$get_extra= 1; // add extra run 
			$get_ball= 0; // ball not counted 
			mysqli_query($conn,"UPDATE live_score SET  field_4 =field_4+'$get_extra', 
					field_5 = field_5+'1'
					where  cus_id='$get_id' and email='$get_email' ");			
		}
		else if ((strcmp($get_field_1 ,"byes" )==0) or (strcmp($get_field_1 ,"legbyes" )==0))
		{
			$get_field_1= 0;
			$get_extra= 1;
			$get_ball= 0;// ball not counted 
			mysqli_query($conn,"UPDATE live_score SET  field_4 =field_4+'$get_extra', 
					field_5 = field_5+'1'
					where  cus_id='$get_id' and email='$get_email' ");			
		}
		else if ((strcmp($get_field_1 ,"out" )==0) )
		{
			
			$result1 = mysqli_query($conn,"SELECT * FROM live_score where field_9='Bowler' and email='$get_email'");
			$Alldetails = mysqli_fetch_array($result1);
			$get_bowler = $Alldetails["field_2"];

			
			$get_field_1= 0;  // No run for out 
			$get_out_count = 1;  // Out Count 
			
			mysqli_query($conn,"UPDATE live_score SET  field_8 =field_8+'1', 
					field_11 = '$get_bowler'
					where  cus_id='$get_id' and email='$get_email' ");			
		}
		else{
			null;
		}
	
	
		$result = mysqli_query($conn,"UPDATE live_score SET  field_4 =field_4+'$get_field_1', 
				  field_5 = field_5+'$get_ball',
				  field_6 = field_6+'$get_field_6', 
				  field_7 = field_7+'$get_field_7' 
				  where cus_id='$get_id' ");
	
	
		mysqli_query($conn,"UPDATE live_score SET  field_4 =field_4+'$get_field_1', 
				  field_5 = field_5+'$get_ball',field_6 = field_6+'$get_out_count'
				  where field_9='Bowler' and email='$get_email' ");
												
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