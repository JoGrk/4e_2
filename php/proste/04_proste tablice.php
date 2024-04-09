<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $pogoda=['rain', 'sunshine', 'clouds', 'hail', 'sleet', 'snow', 'wind'];
    echo "'We've seen all kinds of weather this month. At the beginning of the month, we had $pogoda[5] and $pogoda[6]. Then came $pogoda[1] with a few $pogoda[2] and some $pogoda[0]. At least we didn't get any $pogoda[3] or $pogoda[4].";
    
    $inicjaly=['imie','nazwisko','Teksas','Tokio'];
    echo "<table>";
    foreach($inicjaly as $value){
        echo "<tr><td>$value</td></tr>";
    }
    echo "</table>";

    $imie=[18,44,21,37,69,31,975857,1,8,7];
    foreach($imie as $number){
        if($number % 2== 0){
            echo $number ."<br>";
        }
    }

    $nazwisko=['jabłko','gruszka','smoczy_owoc','banan'];
    foreach ($nazwisko as $key => $value) {
        echo "<p>tablica[$key]=$value";
    }
    ?>
</body>
</html>