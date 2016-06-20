<?php

require('connect_db.php');
$categoria=$_POST['categoria'];
$tabella=$_POST['tabella'];
$select = 'SELECT *';
$from = ' FROM '.$tabella;
if($categoria=='promotions'){
	$promozione='si';
	$where = ' WHERE promozione='.'"'.$promozione.'"';
}
else{
$where = ' WHERE categoria='.'"'.$categoria.'"';
}

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

if (in_array("tuttiDevices", $opts))
    $where .='AND promozione = "'."no".'"';

if(in_array("4", $opts))
	$where .=' AND display >= "'."4".'"'.'AND promozione = "'."no".'"';

if(in_array("5", $opts))
	$where .=' AND display>= "'."5".'"'.'AND promozione = "'."no".'"';

if(in_array("7", $opts))
	$where .=' AND display>= "'."7".'"'.'AND promozione = "'."no".'"';

if(in_array("6", $opts))
	$where .=' AND display>= "'."6".'"'.'AND promozione = "'."no".'"';

if(in_array("downTo150", $opts))
	$where .=' AND prezzo < "'."150".'"'.'AND promozione = "'."no".'"';

if(in_array("between150and300", $opts))
	$where .=' AND prezzo >= "'."150".'"'.' AND prezzo = "'."300".'"'.'AND promozione = "'."no".'"';

if(in_array("between300and600", $opts))
	$where .=' AND prezzo >= "'."300".'"'.' AND prezzo = "'."600".'"'.'AND promozione = "'."no".'"';

if(in_array("upTo600", $opts))
	$where .=' AND prezzo >= "'."600".'"'.'AND promozione = "'."no".'"';

if(in_array("apple", $opts))
	$where .=' AND marca = "'."Apple".'"'.'AND promozione = "'."no".'"';

if(in_array("acer", $opts))
	$where .=' AND marca = "'."Acer".'"'.'AND promozione = "'."no".'"';

if(in_array("alcatel", $opts))
	$where .=' AND marca = "'."Alcatel".'"'.'AND promozione = "'."no".'"';

if(in_array("samsung", $opts))
	$where .=' AND marca = "'."Samsung".'"'.'AND promozione = "'."no".'"';

if(in_array("LG", $opts))
	$where .=' AND marca = "'."LG".'"'.'AND promozione = "'."no".'"';

if(in_array("Huawei", $opts))
	$where .=' AND marca = "'."Huawei".'"'.'AND promozione = "'."no".'"';

if(in_array("nokia", $opts))
	$where .=' AND marca = "'."Nokia".'"'.'AND promozione = "'."no".'"';

if(in_array("ios", $opts))
	$where .=' AND sistemaoperativo = "'."IOS".'"'.'AND promozione = "'."no".'"';

if(in_array("android", $opts))
	$where .=' AND sistemaoperativo = "'."Android".'"'.'AND promozione = "'."no".'"';

if(in_array("microsoft", $opts))
	$where .=' AND marca = "'."Microsoft".'"'.'AND promozione = "'."no".'"';



/* START PROMOTION FILTER OPTIONS */
if(in_array("tutti", $opts))
	$where ;

if(in_array("tablet", $opts))
	$where .=' AND categoria = "'."tablet".'"';

if(in_array("smartphones", $opts))
	$where .=' AND categoria = "'."smartphones".'"';

if(in_array("fisso", $opts))
	$where .=' AND categoria = "'."fisso".'"';

if(in_array("connessione", $opts))
	$where .=' AND categoria = "'."connessione".'"';

if(in_array("camera", $opts))
	$where .=' AND categoria = "'."camera".'"';

if(in_array("printer", $opts))
	$where .=' AND categoria = "'."printer".'"';

if(in_array("fitness", $opts))
	$where .=' AND categoria = "'."fitness".'"';

if(in_array("huawei", $opts))
	$where .=' AND marca = "'."huawei".'"';

if(in_array("olivetti", $opts))
	$where .=' AND marca = "'."Olivetti".'"';

if(in_array("dlink", $opts))
	$where .=' AND marca = "'."Dlink".'"';

if(in_array("sony", $opts))
	$where .=' AND marca = "'."Sony".'"';

if(in_array("tim", $opts))
	$where .=' AND marca = "'."Tim".'"';


/* START Assistance Services FILTER OPTIONS */
if(in_array("product", $opts))
	$where ;

if(in_array("devices", $opts))
	$where .=' AND (tipo = "'."devices".'" OR tipo ="'."alls".'")';

if(in_array("modem", $opts))
	$where .=' AND (tipo = "'."adslefibra".'" OR tipo ="'."alls".'" OR tipo ="'."navigazione".'")';

if(in_array("tventertainment", $opts))
	$where .=' AND (tipo = "'."decoder".'" OR tipo ="'."alls".'")';

if(in_array("services", $opts))
	$where ;

if(in_array("sim", $opts))
	$where .=' AND (tipo = "'."devices".'" OR tipo ="'."alls".'")';

if(in_array("adsl", $opts))
	$where .=' AND (tipo = "'."adslefibra".'" OR tipo ="'."alls".'" OR tipo ="'."navigazione".'")';

if(in_array("allservices", $opts))
	$where ;

if(in_array("onlysim", $opts))
	$where .=' AND (tipo = "'."devices".'" OR tipo ="'."alls".'")';

if(in_array("home", $opts))
	$where .=' AND (tipo = "'."adslefibra".'" OR tipo ="'."alls".'")';

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