<?php
session_start();

if(time()>$_SESSION['time']){
    header('Location: 02_AI_wynik.php');
}
$timeleft = $_SESSION['time'] - time();
echo "Pozostało $timeleft sekund";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<a href="02_AI_3.php">
    Następna strona
</a>
</body>
</html>