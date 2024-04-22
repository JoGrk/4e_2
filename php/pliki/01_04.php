<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="01_04.php" method="get">
        <label for="nazwa_pliku">nazwa pliku</label>
        <input type="text" name="nazwa_pliku" id="nazwa_pliku">
        <button>wyslij</button>
    </form>
    <?php
    if(empty($_GET['nazwa_pliku']) ){
        echo 'wpisz nazwe pliku';
    }
    else{
        $nazwa_pliku = $_GET['nazwa_pliku'];
        if(file_exists($nazwa_pliku)){
            echo "plik $nazwa_pliku istnieje ". filesize($nazwa_pliku);
            unlink($nazwa_pliku);
            echo "ale już nie istnieje";
        }
        else {
            echo "plik nie istnieje ";
            touch($nazwa_pliku);
            echo "ale już jest";
        }
    }
    ?>
</body>
</html>