<?php 
session_start();

if(time() <= $_SESSION['time']){
    $czas=30-($_SESSION['time']-time());
    echo "Gratulacje ukończyłeś zadanie w czasie $czas sekund";
}
else{
    echo "Niestety czas się skończył";
}
session_destroy();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="02_AI.php">Od nowa</a>
</body>
</html>