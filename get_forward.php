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


$data = json_decode(file_get_contents("php://input"));
/*
$get_field_1 = 'Mech';//($data->dept);
$get_type = 'type03';//($data->type);
*/
$get_field_1 = ($data->dept);
$get_type = ($data->type);
		// Assign to User Type group 
		// RTO for Type 2 to N -> shall not be type 1 
		if( (strcmp($get_type ,"type01")==1 ) ) 
		{
			//echo "RTO";
			$get_manager_1 = substr($get_type, -2);
			if ( (strcmp($get_type ,"type11")==0) or (strcmp($get_type ,"type12")==0) ) 
			{
				$get_manager = 'type' . ($get_manager_1 - 1);
			}
			else 
			{
				$get_manager = 'type0' . ($get_manager_1 - 1);
			}
			//echo $get_manager;
		}
		// If type 1 rise for RTO -> Type 1 stays
		else if( (strcmp($get_type ,"type01")==0 ) )
		{
			$get_manager = 'type01';
		}
		else 
		{
			null;
		}
		//echo $get_manager;
		



$result = mysqli_query($conn,"SELECT * FROM login where field_2='$get_manager' AND field_3='$get_field_1' ");

if(mysqli_num_rows($result))
{
	$response["details"] = array();	

	while($Alldetails = mysqli_fetch_array($result))
	{
		// temp user array
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