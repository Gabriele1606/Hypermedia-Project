<?php

require('connect_db.php');
$select = 'SELECT *';
$from = ' FROM devices';
$where = ' WHERE categoria="smartphones"';

$opts = isset($_POST['filterOpts'])? $_POST['filterOpts'] : array('');

if (in_array("tutti", $opts))
    $where .=' AND tipo = "'."fixedline".'"';

if(in_array("4", $opts))
	$where .=' AND display >= "'."4".'"';

if(in_array("5", $opts))
	$where .=' AND display>= "'."5".'"';

if(in_array("6", $opts))
	$where .=' AND display>= "'."6".'"';

if(in_array("downTo150", $opts))
	$where .=' AND prezzo < "'."150".'"';

if(in_array("between150and300", $opts))
	$where .=' AND prezzo >= "'."150".'"'.' AND prezzo <= "'."300".'"';

if(in_array("between300and600", $opts))
	$where .=' AND prezzo >= "'."300".'"'.' AND prezzo <= "'."600".'"';

if(in_array("upTo600", $opts))
	$where .=' AND prezzo >= "'."600".'"';

if(in_array("apple", $opts))
	$where .=' AND marca = "'."Apple".'"';

if(in_array("samsung", $opts))
	$where .=' AND marca = "'."Samsung".'"';

if(in_array("LG", $opts))
	$where .=' AND marca = "'."LG".'"';

if(in_array("huawei", $opts))
	$where .=' AND marca = "'."Huawei".'"';

if(in_array("nokia", $opts))
	$where .=' AND marca = "'."Nokia".'"';

if(in_array("ios", $opts))
	$where .=' AND sistemaoperativo = "'."IOS".'"';

if(in_array("android", $opts))
	$where .=' AND sistemaoperativo = "'."Android".'"';

if(in_array("microsoft", $opts))
	$where .=' AND marca = "'."Microsoft".'"';

$query = $select . $from . $where;
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