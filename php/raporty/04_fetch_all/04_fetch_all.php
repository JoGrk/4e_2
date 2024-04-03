<?php
$link = new mysqli ('localhost','root','','4e_2_baza');

$sql = "SELECT nazwa
        FROM dania;";
$result = $link -> query($sql);
$dania = $result -> fetch_all(1);

$sql = "SELECT imie, nazwisko
        FROM pracownicy;";
$result = $link -> query($sql);
$pracownicy = $result -> fetch_all(1);

$sql = "SELECT marka, kolor, model, stan
        FROM samochody;";
$result = $link -> query($sql);
$samochody = $result -> fetch_all(1);

$link -> close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <ol>
        <?php
        foreach($dania as $danie){
            echo"<li>{$danie['nazwa']}</li>";
        };
        ?>
    </ol>
    <ul>
        <?php
        foreach($pracownicy as $pracownik){
            echo"<li>{$pracownik['imie']} {$pracownik['nazwisko']}</li>";
        };
        ?>
    </ul>
    <ul>
        <?php
        foreach($samochody as $samochut){
            echo"
            <li>
                {$samochut['kolor']} {$samochut['marka']}
                {$samochut['model']}, stan {$samochut['stan']}
            </li>";    
        }
        ?>
    </ul>
</body>
</html>