<?php
/*
 * Telecom Italia Mobile: Hypermedia Project 2015/16
 * getPromoIndex.php
 * Based on the id parameter, retrieves different "static" infos from the db
 * Author: Riccardo Cannistrà, Alessio Dichio, Gabriele Bressan
 */
header('Access-Control-Allow-Origin: *');

require('connect_db.php');
    $query = "SELECT * FROM promotions";

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
    $dbc->close();
    
    ?>
