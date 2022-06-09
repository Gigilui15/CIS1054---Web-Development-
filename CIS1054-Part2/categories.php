<?php

require_once __DIR__.'/bootstrap.php';

require_once 'database.php';
$db = new Db();    

$categories = $db -> select("SELECT * FROM menu");
$dishes = [];

if (isset($_GET['id']))
{
    $categorySelected = $db -> quote($_GET["id"]);
    $dishes = $db -> select("SELECT * FROM item where CategoryID = $categorySelected ORDER BY price;");
}
else 
{
    $dishes = $db -> select("SELECT * FROM item ORDER BY price;");
}

//Get the db object
//$db = new Db();

//echo $twig->render('category.html', ['dishes' => $dishes]);

echo $twig->render('categories.html', ['categories' => $categories, 'dishes' => $dishes]);