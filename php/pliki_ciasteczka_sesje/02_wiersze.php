<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    function wypisz_wiersz($nazwa){
        $plik = fopen("wiersze/$nazwa", "r");
        $linijka = fgets($plik);
        echo "<h1> $linijka </h1>"; 
        $linijka=fgets($plik);
        echo "<h2>$linijka</h2>";

        
        while(!feof($plik)){
            $linijka = fgets($plik);
            $linijka = nl2br($linijka);
            echo $linijka;
        }
        fclose($plik);
}

        $katalog = scandir("wiersze");
        foreach($katalog as $nazwa){
            if(is_file("wiersze/$nazwa")){
                wypisz_wiersz($nazwa);
                echo "<hr>";
            }
        }  
    ?>

</body>
</html>