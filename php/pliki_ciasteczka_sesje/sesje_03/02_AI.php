<?php 
    session_start();
    if(!isset($_SESSION['time'])){
        $_SESSION['time']=strtotime('+30 seconds');
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<a href="02_AI_1.php">
    Następna strona
</a>

    
</body>
</html>