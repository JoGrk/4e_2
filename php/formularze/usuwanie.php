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
    } 
    else {
        echo "<p> wpisz id ucznia </p>";
    }
    ?>
</body>
</html>