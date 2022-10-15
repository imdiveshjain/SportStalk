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
/*
$get_site = ($data->field_1);
$get_area = ($data->field_2);
$get_dept = ($data->field_3);
$get_status = ($data->field_4);
*/
$result = mysqli_query($conn,"SELECT * FROM player ");

if(mysqli_num_rows($result))
{
	$response["details"] = array();	
	
	while($Alldetails = mysqli_fetch_array($result))
	{
		$details = array();
		$details = $Alldetails;
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