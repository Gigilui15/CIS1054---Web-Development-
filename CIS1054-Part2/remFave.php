<?php
    session_start();

    if(isset($_GET['menuItem'])){

    if(isset($_SESSION['cart'])){
        $_SESSION['cart'] = array_diff($_SESSION['cart'], array($_GET['menuItem']));
        if(count($_SESSION['cart']) == 0){
            unset($_SESSION['cart']);
            header("Location: favourites.php");
        }
        else{
            header("Location: favourites.php");
        }
    }
}    