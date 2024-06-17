<?php

    session_start();



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php
        if(time()>$_SESSION['timeOut']){
            echo "Czas upłynął spróbuj jeszcze raz może sie uda!!!";

        }
        else {
            echo "Gratulacje udało ci sie!!";
        }
        session_unset();
        session_destroy();
    ?>
    
</body>
</html>