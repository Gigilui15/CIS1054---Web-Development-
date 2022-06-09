<?php


$to = "webprojecttest2022@gmail.com";
$name = $email = $subject = $comment = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = test_input($_POST["name"]);
    $email = test_input($_POST["email"]);
    $subject = test_input($_POST["subject"]);
    $comment = test_input($_POST["comment"]);
     
}

function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$txt ="Name = ". $name . "\r\n  Email = " . $email . "\r\n Subject =" . $subject. "\r\n Comment =" . $comment;
$headers = "From: ". $email . "\r\n" . "CC: ". $email;
if($email!=NULL){
    mail($to,$subject,$txt,$headers);
    header("Location: index.php");
    exit();
}
