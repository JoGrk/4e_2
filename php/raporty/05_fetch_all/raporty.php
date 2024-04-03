<?php 
$link= new mysqli('localhost','root','','4e_2_baza');
$sql = "SELECT imie, nazwisko, email
FROM uzytkownik;";
$result = $link->query($sql);
$uzytkownicy = $result -> fetch_all(1);

$sql = "SELECT marka, model, rocznik
FROM samochody";
$result = $link -> query($sql);
$auta = $result -> fetch_all(1);
$link-> close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <ol>
        <?php
        foreach ($uzytkownicy as $uzytkownik) {
            echo "<li>{$uzytkownik['imie']} 
                {$uzytkownik['nazwisko']} 
                <b>{$uzytkownik['email']}</b> </li>";
        }

        ?>
    </ol>

    <ul>
        <?php
        foreach ($auta as $samochod) {
            echo "<li> <i>{$samochod['marka']}</i>
            {$samochod['model']}
            {$samochod['rocznik']} </li>";
           
        }
        ?>
    </ul>
</body>
</html>