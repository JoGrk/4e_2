<?php
if(!isset($_COOKIE['username'])){
    echo "Nie ma ciasteczko, tworzy ciasteczko";
    setcookie("username","Jakub Kowalski",time()+3600);

}else{
    echo "Jest ciasteczko";
    setcookie("username","Jakub Kowalski",time()-3600);

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    if(isset($_COOKIE['username'])){
        echo $_COOKIE['username'];
    }
    else{
        echo "Nie ma ciasteczka";
    }
    ?>
</body>
</html