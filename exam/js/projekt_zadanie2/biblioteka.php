<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka publiczna</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Biblioteka w Książkowicach Wielkich</h1>
    </header>
    <main>
        <section id="left">
            <h3>Polecamy dzieła autorów:</h3>
            <ol>
                <?php
                $conn=new mysqli('localhost','root','','biblioteka');
                $sql="SELECT imie,nazwisko
                FROM autorzy
                ORDER BY nazwisko;";
                $result=$conn->query($sql);
                while($row=$result->fetch_assoc()){
                    $imie=$row['imie'];
                    $nazwisko=$row['nazwisko'];
                    echo "<li>$imie,$nazwisko</li>";
                }
                ?>
            </ol>
        </section>
        <section id="mid">
            <h3>ul. Czytelnicza 25, Książkowice&nbsp;Wielkie</h3>
            <p><a href="sekretariat@biblioteka.pl">Napisz do nas</a></p>
            <img src="biblioteka.png" alt="książki">
        </section>
        <section id="right">
            <section id="top">
                <h3>Dodaj czytelnika</h3>
                <form action="biblioteka.php" method="post">
                    <label>imię: <input type="text" name="imie"></label><br>
                    <label>nazwisko: <input type="text" name="nazwisko"></label><br>
                    <label>symbol: <input type="number" name="symbol"></label><br>
                    <button type="submit">DODAJ</button>
                </form>
            </section>
            <section id="bot">
                <?php
                $imie=$_POST['imie'];
                $nazwisko=$_POST['nazwisko'];
                $sql1="INSERT INTO czytelnicy (imie,nazwisko)
                VALUES ('$imie','$nazwisko')";
                echo "Czytelnik $imie, $nazwisko został dodany do bazy danych";
                $result=$conn->query($sql1);
                $conn->close();
                ?>
            </section>
        </section>
    </main>
    <footer>
        <p>Projekt strony: 11223344</p>
    </footer>
</body>
</html>