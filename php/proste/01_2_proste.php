<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <?php
    $twinkle="Thunder";
    $star="elephant";
    echo "<p class='big'> $twinkle, $twinkle little $star </p>";
    echo "<p class='bigger'> $twinkle, $twinkle little $star </p>";
    echo "<p class='thebigest'> $twinkle, $twinkle little $star </p>";
    $x=10;
    $y=-7;
    $z=$x-$y;
    echo "<p> $x+$y=".$x+$y." </p>";
    echo "<p>$x-$y=$z </p>";
    
    $liczba = 8;
    echo "<p> liczba wynosi $liczba </p>";
    $liczba+=2;
    echo "<p> liczba wynosi $liczba </p>";
    $liczba-=4;
    echo "<p> liczba po zmniejszeniu o 4 wynosi teraz $liczba";
    $liczba*=5;
    echo "<p> liczba po pomnożeniu przez 5 wynosi $liczba";

    $liczba /= 3;
    echo "<p> liczba wynosi $liczba </p>";

    $liczba ++;
    echo "<p> liczba po inkrementacji jest rowna $liczba </p>";
    $liczba --;
    echo "<p>zmniejsz o jeden liczba po dekrementacji jest równa 10</p>";

    $around = "around";
    echo 'What goes '.$around.' comes '.$around."<br>";
    

    echo $around." jest typu ".gettype($around)."<br>";

    ?>
</body>
</html>