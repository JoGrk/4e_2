<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styl.css">
    <title>Hurtownia szkolna</title>
</head>
<body>
    <header>
        <h1>Hurtownia z najlepszymi cenami</h1>
    </header>
    <main>
        <section class="left">
            <h2>Nasze ceny</h2>
            <table>
            <?php 
            $link = new mysqli('localhost','root','','sklep');
            $sql = "SELECT nazwa, cena FROM Towary LIMIT 4;";
            $result = $link -> query($sql);
            while($row = $result->fetch_array()){
                echo "<tr><td>$row[0]</td><td>$row[1]</td></tr>";
            }
            $link ->close()
            ?>
            </table>
        </section>
        <section class="mid">
            <h2>Koszt zakupów</h2>
            <form action="index.php" method="post">
                Wybierz artykuł:
                <select name="list">
                    <option value="Zeszyt 60 kartek">Zeszyt 60 kartek</option>
                    <option value="Zeszyt 32 kartki">Zeszyt 32 kartki</option>
                    <option value="Cyrkiel">Cyrkiel</option>
                    <option value="Linijka 30 cm">Linijka 30 cm</option>
                </select>
                <br>
                liczba sztuk: <input type="number" name="ilosc"><br>
                <button type="submit">OBLICZ</button>
            </form>
            <?php 
        
            $link = new mysqli ('localhost','root','','sklep');
            if (!empty($_POST['ilosc'])){
                $produkt =$_POST['list'];
                $ilosc = $_POST['ilosc'];
                $sql = "SELECT cena FROM towary WHERE nazwa = '$produkt';";
                $result = $link ->query($sql);
                while ($row = $result->fetch_array()){
                    $cena = $row[0]*$ilosc;
                    echo "wartośc zakupów: $cena";
                }
            }
            $link ->close()

            ?>
        </section>
        <section class="right">
            <h2>Kontakt</h2>
            <img src="zakupy.png" alt="hurtownia" width="180px">
            <p>e-mail: <a href="mailto:hurt@poczta2.pl">hurt@poczta2.pl</a></p>
        </section>
    </main>
    <footer>
        <h4>Witrynę wykonał: 0000000</h4>
    </footer>
</body>
</html>