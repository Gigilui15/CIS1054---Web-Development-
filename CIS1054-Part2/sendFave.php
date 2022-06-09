<?php

require_once __DIR__.'/Bootstrap.php';
require_once __DIR__.'/Database.php';

session_start();

    $db = new Db();
    $cart = $_SESSION['cart'];
    $result = $db -> select("SELECT name, description FROM item WHERE id IN (" . implode(',', $cart) . ")");
    
    $arraysend = array();

    $subject = "Your Favourites";
    $from = "webprojecttest2022@gmail.com";
    $to = $_POST['email'];
    $who = $_POST['name'];

    foreach($result as $temp){
        array_push($arraysend, implode("\n", $temp));
    }

    $txt ="Dear $who,\n\n"."These Are Your Favourites from the Wild West Bar and Grill: \n\n".implode("\n\n", $arraysend);

    if($to!=NULL){
        mail($to,$subject,$txt);
        header("Location: index.php");
        exit();
    }
    else{
        echo $twig->render('favourites.html');
    }