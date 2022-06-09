<?php
    session_start();   
    if(!isset($_SESSION["time_first"])){
        $_SESSION["time_first"] = time();
        $_SESSION["date_first"] = date("d-m-y");
    }

    $timeSinceLoad = time() - $_SESSION["time_first"];

    echo("You have first used this page on " .$_SESSION["date_first"] .", exactly ". $timeSinceLoad . " seconds ago");

    
?>