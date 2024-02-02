<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
       $id = $_POST['id_czytelnika'];

       $sql = "DELETE FROM wypozyczenia 
       WHERE id_czytelnik =$id;";

        $conn = new mysqli('localhost','root','','4e_2_biblioteka');
        if($conn -> query($sql)) {
            echo "wypożyczenia czytelnika $id usunięto ";
        }
        $conn->close();
    ?>
</body>
</html>