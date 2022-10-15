<?php
	/* ************************************************************
	*************** Arudhra Innovations - CPanel*******************
	***************************************************************
	********************** Product Add *****************************
	***************************************************************/

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';
	
// connecting to db

$data = json_decode(file_get_contents("php://input"));
$get_topic =  ($data->topic);
$get_content =  ($data->content);


	$result = mysqli_query($conn,"INSERT INTO news
					(topic, content) VALUES('$get_topic', '$get_content')");
		
		if($result)
		{
			$response["success"] = 1;
			echo json_encode($response);
		}
		else
		{
			$response["success"] = 0;
			echo json_encode($response);
		}

?>