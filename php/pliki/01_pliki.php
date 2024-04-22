<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php
        echo "To jest główny skrypt ";
        // include "jeden.php";
        // require "dwa.php";
        $nazwa_pliku = $_GET['nazwa_pliku'];

        if(file_exists($nazwa_pliku)){
            if(is_file($nazwa_pliku)){
                echo filesize($nazwa_pliku);
                include $nazwa_pliku;
            }
            else{
                echo $nazwa_pliku." to katalog";
            }
        }
        else{
            echo "Plik nie istnieje";
        }

        

        if(!file_exist('jeden.php')){
            echo"nie ma pliku";
        }
        
        else{
                echo "Plik istnieje, jego  rozmiar ".
                filesize("jeden.php");
                include "jeden.php";
        }
        
    
    ?>
    <form action="01_pliki.php" method="get">
        <label for="nazwa_pliku">nazwa pliku</label>
        <input type="text" name="nazwa_pliku" id="nazwa_pliku">
        <button>wyslij</button>
    </form>

</body>
</html>