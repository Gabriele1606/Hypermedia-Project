<?php

require('connect_db.php');

if(isset($_POST['categoria'])) {
	$categoria=$_POST['categoria'];
	$query='SELECT * FROM categorie WHERE categoria="'.$categoria.'"';
	$result = mysqli_query($dbc,$query);
	if($result) {
		$myArray = array(); //create an array
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);

        }
        echo json_encode($myArray);
	}
	else {
		echo 'ERROR in query';
	}

	//free result
    $result->close();
}

    //close connection
    $dbc->close();

?>