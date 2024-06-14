<?php
session_start();

if(time()>$_SESSION['time']){
    header('Location: 02_AI_wynik.php');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="02_AI.js" defer></script>
</head>
<body>
    <?php
        $timeleft = $_SESSION['time'] - time();
        echo "<p>Pozostało $timeleft sekund</p>";
        echo "<p id='timeleft'>$timeleft</p>";
    ?>
<a href="02_AI_2.php">
    Następna strona
</a>
<span></span>
</body>
</html>