<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mój kalendarz</title>
    <link rel="stylesheet" href="styl5.css">
</head>
<body>
    <header>
        <section id='left'>
            <img src="logo1.png" alt="Mój kalendarz">

        </section>
        <section id="right">
            <h1>KALENDARZ</h1>
            <!-- skrpyt1 -->
            <?php
                $conn = new mysqli ('localhost', 'root', '', '4e_2_egzamin5');

                $sql = "SELECT miesiac,rok
                FROM zadania
                WHERE dataZadania='2020-07-01';";

                $result = $conn -> query($sql);

                while($row=$result -> fetch_assoc(())){

                }

                $conn -> close();
            ?>
        </section>
    </header>

    <main>
        <!-- skrpyt2 -->  
    </main>
    
    <footer>
        <form action="Kalendarz.php" method="POST">
            <label for="">dodaj wpis</label>
            <input type="text">
            <button>DODAJ</button>
        </form>

        <p>Stronę wykonał: 00000000000</p>
    </footer>
</body>
</html>