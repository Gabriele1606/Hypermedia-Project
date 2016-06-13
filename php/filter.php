<?php

require('connect_db.php');
$categoria=$_POST['categoria'];
$select = 'SELECT *';
$from = ' FROM smartlifeservices';
$where = ' WHERE categoria='.'"'.$categoria.'"';

$opts = isset($_POST['filterOpts'])? $_POST['filterOpts'] : array('');

if (in_array("fixedline", $opts))
	$where .=' AND tipo = "'."fixedline".'"';

if (in_array("mobile", $opts))
	$where .=' AND tipo = "'."mobile".'"';

if(in_array("timvision", $opts))
	$where .=' AND tipo = "'."fixedline".'"'.' AND sottotipo = "'."timvision".'"';

if(in_array("fixinternet", $opts))
	$where .=' AND tipo = "'."fixedline".'"'.' AND sottotipo = "'."internet".'"';

if(in_array("fixvoiceinternet", $opts))
	$where .=' AND tipo = "'."fixedline".'"'.' AND sottotipo = "'."voiceinternet".'"';

if(in_array("voice", $opts))
	$where .=' AND tipo = "'."fixedline".'"'.' AND sottotipo = "'."voiceonly".'"';

if(in_array("mobvoiceinternet", $opts))
	$where .=' AND tipo = "'."mobile".'"'.' AND sottotipo = "'."voiceinternet".'"';

if(in_array("mobinternet", $opts))
	$where .=' AND tipo = "'."mobile".'"'.' AND sottotipo = "'."internet".'"';

if(in_array("smartphone", $opts))
	$where .=' AND tipo = "'."mobile".'"'.' AND sottotipo = "'."smartphone".'"';

if(in_array("overseas", $opts))
	$where .=' AND tipo = "'."mobile".'"'.' AND sottotipo = "'."overseas".'"';

if(in_array("tv", $opts))
	$where .=' AND tipo = "'."tv".'"';

if(in_array("reading", $opts))
	$where .=' AND tipo = "'."reading".'"';

if(in_array("music", $opts))
	$where .=' AND tipo = "'."music".'"';

if(in_array("games", $opts))
	$where .=' AND tipo = "'."games".'"';

if(in_array("seriea", $opts))
	$where .=' AND tipo = "'."seriea".'"';

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