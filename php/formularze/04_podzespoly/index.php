<?php
    $conn= new mysqli("localhost","root","","4e_2_baza");

    $sql="SELECT nazwa,kategoria,cena
    FROM podzespoly
        INNER JOIN typy ON podzespoly.typy_id=typy.id;";
    $result=$conn->query($sql);
    $podzespoly=$result->fetch_all(1);

    $sql="SELECT id,kategoria
    FROM typy;";
    $result=$conn->query($sql);
    $typy=$result->fetch_all(1);


    $conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Lista podzespołów</h1>

    <ul>
        <?php
            foreach($podzespoly as $podzespol){
                echo "<li>";
                
                echo "<b>
                {$podzespol['kategoria']}
                </b> {$podzespol['nazwa']}
                -{$podzespol['cena']}";

                echo "</li>";

                
            }
        ?>
    </ul>
    <form action="dodawanie.php">
        <input type="text" name="nazwa" placeholder='nazwa'>
        <input type="number" name="cena" placeholder='cena'>
        <select name="idTypu" id="idTypu"></select>
    </form>
</body>
</html>