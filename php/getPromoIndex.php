<?php
/*
 * Telecom Italia Mobile: Hypermedia Project 2015/16
 * getPromoIndex.php
 * Based on the id parameter, retrieves different "static" infos from the db
 * Author: Riccardo Cannistrà, Alessio Dichio, Gabriele Bressan
 */
header('Access-Control-Allow-Origin: *');

require('connect_db.php');

//connection to db
$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

if(isset($_POST['id'])) $type = $_POST['id'];
    else $type = '1'; //debug

    switch($type) {

        case '1':
        $query = "SELECT title FROM promotions";
        break;
        case '2':
        $query = "SELECT descrizione FROM promotions";
        break;
        case '3':
        $query = "SELECT left-image FROM promotions";
        break;
        case '4':
        $query = "SELECT right-image FROM promotions";
        break;
        case '5':
    }


    //query execution
    $result = mysqli_query($dbc,$query);  
    //if there are data available
    if($result->num_rows >0)
    {
        $myArray = array();//create an array
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);
        }
        echo json_encode($myArray);
    }

    //free result
    $result->close();

    //close connection
    $mysqli->close();



}






?>
