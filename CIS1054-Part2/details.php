<?php
    require_once __DIR__.'/Bootstrap.php';
    require_once __DIR__.'/Database.php';

    if(isset($_GET['id'])){


        $db = new Db();
        $menuItemId = $db -> quote($_GET['id']);
        $result = $db -> select("SELECT * FROM item where id = $menuItemId;");

        if (count($result) > 0){
            
            //result has been found
            $menuItem = [
                'id'                => $result[0]['id'],
                'name'              => $result[0]['name'],
                'description'       => $result[0]['description'],
                'image'             => $result[0]['image'],
                'price'             => $result[0]['price'],
            ];

            //render creates an html page loading things from the database
            echo $twig->render('dishes.html', ['menuItem' => $menuItem]);

        }else{

            //renders error page
            echo $twig->render('/templates/404page.html');
        }

    }