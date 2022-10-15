<?php 
// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));
$get_id_1 =$_POST['cook_cus_id'];
$get_id = substr($get_id_1, 1, -1);

	
	$tempPath = $_FILES[ 'file' ][ 'tmp_name' ];
    $target_dir = "uploads/";
	$uploadPath = $target_dir . basename($_FILES[ 'file' ][ 'name' ]);
	$imageFileType = pathinfo($uploadPath,PATHINFO_EXTENSION);
	
    $get_file = "http://10.0.2.2/projects/cricket/web/uploads/".$_FILES[ 'file' ][ 'name' ]."";

	
	$result = mysqli_query($conn,"UPDATE news SET field_1='$get_file' WHERE id='$get_id' ");
	
	
	if($result)
	{
		move_uploaded_file( $tempPath, $uploadPath );
		// success
		$answer = array( 'answer' => 'File transfer completed' );
		$json = json_encode( $answer );

		echo $json;
	}
	else 
	{
		 echo 'No files';
	}

?>