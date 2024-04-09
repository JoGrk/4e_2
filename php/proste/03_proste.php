<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $i=0;
    while($i<10){
        echo"<p>imie";
        $i++;
    }
    $i=0;
    do{
        echo '<p> nazwisko';
        $i++;
    }while($i<10);
    for($i=0; $i<10; $i++){
        echo "$i, ";
    }
    
    for($i=10; $i<=60; $i+=2){
        echo " $i,";
    }

    for($i=1; $i<=10; $i++){
        echo "$i*$i=".$i*$i."<br>";
    }
    for($i='A';$i<='G';$i++){
        echo "<h2> $i </h2>";
    };
    echo"<ol>";
    for($i=1; $i<=10; $i++){
        echo"<li>".$i**3;
    }
    echo"</ol>";

    ?>
</body>
</html>