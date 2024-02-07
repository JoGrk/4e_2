<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php

        $nazwa = $_POST['nazwa'] ?? null;
        $cena = $_POST['cena'] ?? null ;
        $idProducenta = $_POST['idProducenta'] ?? null; 
        $idTypu = $_POST['idTypu'] ?? null ;
        if($nazwa && $cena && $idProducenta && $idTypu)
        {
            $link = new mysqli("localhost", "root", "", "4e_2_baza");
            $sql = "INSERT INTO podzespoly
            (typy_id,producenci_id,nazwa,cena)
            VALUES
            ($idTypu, $idProducenta,'$nazwa', $cena);";
            $result = $link -> query($sql);
            if($result){
                echo "Produkt $nazwa został dodany!!!!!!!!!!!";
            }
            $link -> close();
        }
        else 
        {
            echo "Uzypełnij dane !!!";
        }

    ?>
</body>
</html>