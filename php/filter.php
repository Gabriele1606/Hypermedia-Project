<?php

require('connect_db.php');
$categoria=$_POST['categoria'];
$tabella=$_POST['tabella'];
$select = 'SELECT *';
$from = ' FROM '.$tabella;
$where = ' WHERE categoria='.'"'.$categoria.'"';

$opts = isset($_POST['filterOpts'])? $_POST['filterOpts'] : array('');

/* START PLANS FILTER OPTIONS */

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

/* START ENTERTAINMENT FILTER OPTIONS */

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

/* START SMARTPHONE FILTER OPTIONS */

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