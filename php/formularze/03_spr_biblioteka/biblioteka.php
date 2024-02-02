<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <ol>
        <?php
        $conn = new mysqli('localhost','root','','4e_2_biblioteka');

        $sql="SELECT tytul,imie,nazwisko
            FROM autorzy
            INNER JOIN ksiazki ON autorzy.id= ksiazki.id_autor;";
        $result=$conn->query($sql);
        while( $row = $result->fetch_assoc()){
            $tytul = $row['tytul'];
            $imie = $row['imie'];
            $nazwisko = $row['nazwisko'];
            echo "<li> $imie $nazwisko - <b>$tytul </b> </li>"; 
        }

        
        ?>
        
    </ol>
    <form action="usuwanie.php" method="POST">
        <label for="czytelnik">wybierz czytelnika</label>
        <select name="id_czytelnika" id="czytelnik">
            <?php
                $sql = 'SELECT id, imie, nazwisko
                FROM czytelnicy;';
                $result=$conn->query($sql);
                while($row = $result->fetch_assoc() ){

                    $id = $row['id'];
                    $imie = $row['imie'];
                    $nazwisko = $row['nazwisko'];
                    echo "<option value='$id'>$imie $nazwisko</option>";
                }

                $conn->close();
            ?>
            

        </select>
        <button>Wyślij</button>
    </form>
</body>
</html>