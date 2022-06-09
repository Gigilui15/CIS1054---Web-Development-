<?php
    require_once __DIR__.'/Bootstrap.php';

    

    if(isset($_REQUEST['ok'])){
        error_reporting(E_ERROR | E_PARSE);
        $xml = new DOMDocument("1.0", "UTF-8");
        $xml->load("reservations.xml");

        $rootTag  =$xml ->getElementsByTagName("document")->item(0);

        $dataTag= $xml->createElement("data");

        $nameTag = $xml->createElement("name", $_REQUEST['name']);
        $emailTag = $xml->createElement("email", $_REQUEST['email']);
        $phoneTag = $xml->createElement("phone", $_REQUEST['phone']);
        $dateTag = $xml->createElement("date", $_REQUEST['date']);
        $timeTag = $xml->createElement("time", $_REQUEST['time']);
        $peopleTag = $xml->createElement("people", $_REQUEST['people']);
        $commentTag = $xml->createElement("comment", $_REQUEST['comment']);

        $dataTag->appendChild($nameTag);
        $dataTag->appendChild($emailTag);
        $dataTag->appendChild($phoneTag);
        $dataTag->appendChild($dateTag);
        $dataTag->appendChild($timeTag);
        $dataTag->appendChild($peopleTag);
        $dataTag->appendChild($commentTag);

        $rootTag->appendChild($dataTag);

        $xml-> save("reservations.xml");
        header("Location: index.php");
        exit();
    }
    
    echo $twig->render('book.html');
