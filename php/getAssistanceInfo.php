<?php

require('connect_db.php');

if (isset($_POST['tabella'])) {
	$tabella=$_POST['tabella'];
	$categoria=$_POST['categoria'];
	$id=$_POST['id'];

}
else{
	echo "Error, table wasn't set correctly";
}

$query="SELECT nome, immagine, descrizione, contenuto FROM $tabella WHERE categoria='$categoria' AND id='$id'";

$result=mysqli_query($dbc,$query);
if($result) {

	$myArray = array(); //create an array
	while($row = $result->fetch_array(MYSQL_ASSOC)) {	
		$myArray[] = array_map('utf8_encode', $row);
	}

	echo json_encode($myArray);

	//free result
	$result->close();

} else {
	echo 'Error: invalid query';
}
//close connection
$dbc->close();


?>