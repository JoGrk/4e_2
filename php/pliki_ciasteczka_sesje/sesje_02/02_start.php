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
$uzytkownik = [
    'motyw' => 'jasna',
    'język' => 'polski',
    'powiadomienia' => 'tak'
];

$_SESSION['preferencje']= $uzytkownik;
    ?>
    <a href="02_odczyt.php">odczyt</a>
</body>
</html>