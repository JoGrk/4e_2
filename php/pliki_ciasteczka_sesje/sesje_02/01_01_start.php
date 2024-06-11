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
    
    $_SESSION['userid'] = 10020;

    
    ?>
    <a href="01_01-odczyt.php">strona druga</a>
</body>
</html>