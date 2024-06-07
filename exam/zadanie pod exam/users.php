<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel administratora</title>
    <link rel="stylesheet" href="styl4.css">
</head>
<body>
    <header>
        <h3>Portal Społecznościowy - panel administratora</h3>
    </header>
    <main>
        <section id='left'>
            <h4>Użytkownicy</h4>
            <?php
            $conn = new mysqli('localhost','root','','4e_2_exam');
            $sql = "SELECT id, imie, nazwisko, rok_urodzenia, zdjecie
            FROM osoby
            LIMIT 30;";
            $result=$conn->query($sql);
            while($row=$result->fetch_assoc()){
                $id=$row['id'];
                $imie=$row['imie'];
                $nazwisko=$row['nazwisko'];
                $rok_urodzenia=$row['rok_urodzenia'];
                $wiek=date("Y")-$rok_urodzenia;
                echo"$id. $imie $nazwisko, $wiek lat <br>";
            }
            $conn -> close();
            ?>
        <a href="settings.html">Inne ustawienia</a>
        </section>
        <section id='right'>
            <h4>Podaj id użytkownika</h4>
            <form action="users.php" method='POST'>
                <input type="number" name="id">
                <button>Zobacz</button>
                <hr>
            </form>
                <?php
                $conn = new mysqli('localhost','root','','4e_2_exam');
                if(isset($_POST['id'])){
                $id=$_POST['id'];
                $sql="SELECT imie, nazwisko, rok_urodzenia, opis, zdjecie, nazwa
                FROM osoby
                    INNER JOIN hobby ON osoby.Hobby_id=hobby.id
                WHERE osoby.id=$id;";
                $result=$conn->query($sql);
                while($row=$result->fetch_assoc()){
                    $imie=$row['imie'];
                    $nazwisko=$row['nazwisko'];
                    $rok_urodzenia=$row['rok_urodzenia'];
                    $opis=$row['opis'];
                    $zdjecie=$row['zdjecie'];
                    $nazwa=$row['nazwa'];
                    echo"<h2>$id. $imie $nazwisko</h2>";
                    echo"<img src='$zdjecie' alt=''><br>";
                    echo "<p>Rok urodzenia: $rok_urodzenia</p>";
                    echo "<p>Opis: $opis</p>";
                    echo "<p>Hobby: $nazwa</p>";
                }
                }
                ?>
        </section>
    </main>
    <footer>
        <p>Stronę wykonał: 9003989237</p>
    </footer>
</body>
</html>