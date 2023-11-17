
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Raporty</h1>
    <?php
        echo "<h2>nazwy dań</h2>";
        echo "<p>Tu będą nazwy dań: </p>";
        // Wyświetl wszystkie nazwy dań (pole nazwa, tabela dania), każdy jako osobny element listy numerowanej

        $conn = new mysqli('localhost', 'root', '', '4e_2_raporty');

        $sql = "SELECT nazwa FROM dania";
        $result = $conn->query($sql);

        // echo "to jest zapytanie $sql tu koniec <br>";
        // echo $result->num_rows;
        echo "<ol>";

        while ($row = $result-> fetch_assoc()){
            echo "<li> {$row['nazwa']} </li>";
        }

        echo "</ol>";

        $conn->close(); 
    ?>

    <h1>Pracownicy</h1>
    <?php
        $conn= new mysqli('localhost','root','','4e_2_raporty');
        $sql = "select imie, nazwisko from pracownicy";
        $result = $conn->query($sql);
        echo "<ul>";
        while($row = $result->fetch_assoc()){
            $imie=$row['imie'];
            $nazwisko=$row['nazwisko'];
            echo "<li> $imie $nazwisko </li>";
        }
        echo "</ul>";
        $conn->close();
    ?>

    <h1>samochody</h1>
    <?php
        $conn=new mysqli("localhost","root","","4E_2_raporty");
        $sql = "select kolor, marka, model, stan from samochody";
        $result = $conn->query($sql);
        echo "<ul>";
        while($row=$result->fetch_assoc()){
            $marka=$row['marka'];
            $kolor=$row['kolor'];
            $model=$row['model'];
            $stan =$row['stan'];
            echo "<li>$marka $kolor $model, stan: $stan</li>";
        } 

        echo "</ul>";

        $conn->close();


    ?>
</body>
</html>