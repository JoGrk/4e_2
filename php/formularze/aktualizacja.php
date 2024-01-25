<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aktualizacja</title>
</head>
<body>
    <?php
    //    !empty()   czy nie jest puste
    //    isset()   czy jest ustawiona wartość w zmiennej

    if (!empty($_POST['id-ucznia'])){
        $id_ucznia = $_POST['id-ucznia'];
        echo "Podałeś id ucznia $id_ucznia ";
        $link = new mysqli('localhost', 'root', '', '4e_2_szkola');

        $sql = "UPDATE  uczen 
        SET miejsce_urodzenia = 'Bydgoszcz'
        WHERE id = $id_ucznia;" ;

        if ( $link->query($sql) ){
            echo "<br>dane użytkownika $id_ucznia zostały zaktualizowane";
        }

        $link->close();
    } 
    else {
        echo "<p> wpisz id ucznia </p>";
    }
    ?>
</body>
</html>