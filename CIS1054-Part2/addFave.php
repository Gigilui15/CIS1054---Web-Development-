<?php
    require_once __DIR__.'/Bootstrap.php';
    require_once __DIR__.'/Database.php';
    
    session_start();
    

    $dish = $_GET['menuItem'];

    if(isset($_SESSION['cart'])){
        array_push($_SESSION['cart'], $dish);
    }
    else{
        $_SESSION['cart']=array();
        array_push($_SESSION['cart'], $dish);
    }
   header("Location: favourites.php");