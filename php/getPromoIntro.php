<?php

header('Access-Control-Allow-Origin: *');

require('connect_db.php');

if (isset($_POST['tabella'])) {
	$tabella=$_POST['tabella'];
}
else
	echo "Error, table wasn't set correctly"; //debugging
$query="SELECT intro FROM $tabella WHERE promo!='NULL'";
$result=mysqli_query($dbc,$query);

if($result){
	$myArray = array(); //create an array
	while($row = $result->fetch_array(MYSQL_ASSOC)) {
		$myArray[] = array_map('utf8_encode', $row);
	}
	echo json_encode($myArray);

	//free result
	$result->close();
}
else
	echo "Error: invalid query";

//close connection
$dbc->close();


?>
