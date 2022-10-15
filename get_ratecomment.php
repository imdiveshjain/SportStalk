<?php
/*********************
**** CPanel ******************
*********/

/* Following code will retrieve table values */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db


// check for post data
$data = json_decode(file_get_contents("php://input"));
$get_email = ($data->email);
$get_field_3 = ($data->field_3);
		$result1 = mysqli_query($conn,"SELECT  * FROM answer where field_3='$get_field_3' AND email='$get_email'");
			// Sum query rating
			
			$result2 = mysqli_query($conn,"SELECT SUM(field_9) as total_price FROM answer WHERE  email='$get_email' AND field_3='$get_field_3'");
			
if (mysqli_num_rows($result1))
{
			$Total_Sum = mysqli_fetch_array($result2);			
			$get_total_sum = $Total_Sum["total_price"];
			$response["products"] = array();
			$response["details"] = array();
			while($AllProducts = mysqli_fetch_array($result1))
			{
				$products = array();
				$details = array();
				$products = $AllProducts;
				$get_comment = $AllProducts["field_13"];
				$details["question"] = $get_field_3;
				$products["get_comment"] = $get_comment;
				$details["sum"] = $get_total_sum;
				array_push($response["products"],$products);
			}
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