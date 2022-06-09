<html>
    <body>
        <?php 
            session_start();
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $_SESSION["username"] = $_POST["uname"]; 
                $_SESSION["age"] = $_POST["ag"];
            }
            else{
                $_SESSION["username"] = $_GET["uname"]; 
                $_SESSION["age"] = $_GET["ag"];
            } 
        ?>

        Username: <?php echo $_SESSION["username"]; ?><br>
        Age: <?php echo $_SESSION["age"]; ?>

    </body>
</html>    
