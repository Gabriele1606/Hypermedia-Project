<?php


require('connect_db.php');

	 


	$name = mysqli_real_escape_string($dbc, $_POST['name']);
    $surname = mysqli_real_escape_string($dbc, $_POST['surname']);
	$mail = mysqli_real_escape_string($dbc, $_POST['mail']);
	$telephone = mysqli_real_escape_string($dbc, $_POST['telephone']);
	$birthday = mysqli_real_escape_string($dbc, $_POST['birthday']);
	$city = mysqli_real_escape_string($dbc, $_POST['city']);
	$province = mysqli_real_escape_string($dbc, $_POST['province']);
	$cap = mysqli_real_escape_string($dbc, $_POST['cap']);
	$problem=$_POST['textArea'];

    $query = "INSERT INTO problemsent (name, surname, mail, telephone, birthday, city, province, cap, problem ) 
    VALUES ('$name ', '$surname', '$mail', '$telephone', '$birthday', '$city', '$province', '$cap' ,'$problem' )";

    if(mysqli_query($dbc, $query)){
    echo "";
}
else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($dbc);
}
mysqli_close($dbc);


?>
<script>
        var timer = setTimeout(function() { window.location='../index.html'}, 3000);
    </script>
<center><h2>La tua richiesta è stata inviata con successo!<br>
Stai per essere reindirizzato alla home page...<h2></center>