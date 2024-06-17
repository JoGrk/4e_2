<?php
    session_start();
    $_SESSION['timeOut'] = time()+60;



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

    <a href="./sesja_2.php">Link do następnej strony</a>
    
</body>
</html>