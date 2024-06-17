<?php
    session_start();
    if(time()>$_SESSION['timeOut']){
        header('Location: ./sesja_5.php');
        exit;
    }
    $time = $_SESSION['timeOut']-time();
  

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="./skrypt.js" defer></script>
</head>
<body>
    <?php

       echo '<p>';
       echo "Pozostalo <span id='timeID'> $time </span> sekund"; 
       echo '</p>';

    ?>

    <a href="./sesja_3.php">Link do następnej strony</a>
    
</body>
</html>