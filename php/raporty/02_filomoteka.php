<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $conn = new mysqli ('localhost', 'root', '', '4e_2_filmoteka');
    $sql="SELECT tytul FROM filmy WHERE Gatunek='SF'";
    $result=$conn->query($sql);
    echo "<ol>";
    while($row=$result->fetch_assoc()){
        $tytul=$row['tytul'];
        echo "<li>$tytul</li>";
    }
    echo "</ol>";

// ZADANIE 2
    $sql="SELECT tytul, nazwisko 
    FROM Filmy 
        INNER JOIN Rezyserzy ON Filmy.RezyserID=Rezyserzy.IDRezyser;";
    $result=$conn->query($sql);
    echo "<ul>";
        while($row=$result->fetch_assoc()){
            $tytul=$row['tytul'];
            $nazwisko=$row['nazwisko'];
            echo "<li><b>$tytul</b> $nazwisko </li>";
        }
    echo "</ul>";
    $conn->close();
    ?>
</body>
</html>