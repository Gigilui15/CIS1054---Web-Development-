<?php
    require_once __DIR__.'/Bootstrap.php';
    require_once __DIR__.'/Database.php';

session_start();

if(isset($_SESSION['cart'])){
    $db = new Db();
        $cart = $_SESSION['cart'];
        $result = $db -> select("SELECT * FROM item WHERE id IN (" . implode(',', $cart) . ")"); 
        echo $twig->render('favourites.html', ['favourites' => $result]);
}
else{
    echo $twig->render('favorites-not-logged-in.html');
}

