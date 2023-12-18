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
    

    //Wyświetl wynik działania kwerendy c. w postaci tabeli, każde pole w osobnej komórce
    $conn= new mysqli('localhost','root','','4e_2_filmoteka');

    $sql="SELECT tytul, gatunek
        FROM recenzje
            INNER JOIN Filmy ON recenzje.IDRecenzja=Filmy.recenzjaID
        WHERE Ocena=4;";
    $result=$conn->query($sql);
    echo "<table>";
    while ($row=$result->fetch_assoc()){
        $tytul=$row['tytul'];
        $gatunek=$row['gatunek'];
        echo "<tr><td>$tytul</td><td>$gatunek</td></tr>";
    }
    echo "</table>";
    $conn->close();

    // tabele z wykorzystanie foreach
    $conn= new mysqli('localhost','root','','4e_2_filmoteka');
    $sql="SELECT filmy.*
    FROM recenzje
        INNER JOIN Filmy ON recenzje.IDRecenzja=Filmy.recenzjaID
    WHERE Ocena=4;";
    $result=$conn->query($sql);

    echo "<table>";
    while ($row=$result->fetch_assoc()){
        echo "<tr>";
        foreach($row as $field){
            echo "<td>$field</td>";
        }
        echo "</tr>";
    }

    echo "</table>";

    $sql="SELECT ocena,tresc FROM recenzje";

    $result=$conn->query($sql);
   

    $conn->close();
    ?>
</body>
</html>