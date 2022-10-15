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


$get_created_date =date('Y-m-d');
$cur_time ='12:50';//date('H:i');

//echo date('H:i');

$get_id = 42;

if( empty($get_created_date)   )
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
	
	if (($cur_time == date('H:i')) ) // start at min time 
		{
			$result = mysqli_query($conn,"UPDATE cur_date SET 
					created_date='$get_created_date' WHERE cus_id = '$get_id' ");
			// check for empty result
			if($result)
			{
				$response["success"] = 1;		
				echo json_encode($response);
			}
		}
			else 
			{
				$response["success"] = 0;		
				echo json_encode($response);
			}

	
}
?>