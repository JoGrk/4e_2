<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styl3.css">
</head>
<body>
<header>
        <h1>Grupa Polskich Kwiaciarni</h1>
    </header>
    
    <main>
        <section id="left">
            <h2>Menu</h2>
            <ol>
                <li> <a href="index.html">Strona główn</a></li>
                <li> <a href="https://www.kwiaty.pl/" target="_blank">Rozpoznaj Kwiaty</a></li>
                <li > <a href="znajdz.php"> znajdz kwiaciarnie</a>
                <ul>
                    <li>w warszawie</li>
                    <li>w wrocławiu</li>
                    <li>w malborku</li>
                </ul>
                </li>
                
            </ol>
        </section>
        <section id="right">
           <h2>Znajdź kwiaciarnię</h2>
           <form action="znajdz.php" method="post">
            <label for="miasto">Podaj nazwę miasta: </label>
            <input type="text" id="miasto">
            <button>SPRAWDŹ</button>
           </form>
           <?php
           $conn = new mysqli('localhost','root','',' ');
           ?>
        </section>
    </main>

    <footer>
        <p>Stronę opracował: 0000000000</p>
    </footer>
</body>
</html>