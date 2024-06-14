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
    $_SESSION['imie'] = "Janusz";
    echo "witaj {$_SESSION['imie']} ! <br>";
    $_SESSION['imie'] = "Piotr";
    echo "Teraz jestem {$_SESSION['imie']} <br>";
    unset($_SESSION['imie']);
    if(!isset($_SESSION['imie'])){
        echo "Zmienna sesji nie istnieje";
    };
    session_destroy()
    ?>
</body>
</html>