<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php
    if( empty($_POST['first-name']) || empty($_POST['sur-name']) || empty($_POST['code']) ){
        echo "Uzupełnij dane";
    }
    else{
        $imie=$_POST['first-name'];
        $nazwisko=$_POST['sur-name'];
        $kod=$_POST['code'];
        $conn = new mysqli("localhost" , "root" , "" , "4e_2_biblioteka2");
        $sql = "INSERT INTO
        Czytelnicy(imie, nazwisko, kod)
        VALUES
        ('$imie', '$nazwisko', '$kod');";
        if($conn->query($sql)){
            echo "User $imie $nazwisko został dodany";    
        }
        $conn -> close();
    }
    
    ?>
</body>
</html>