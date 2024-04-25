

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php 
    if(isset($_COOKIE['visited'])){
        echo "Witamy ponownie w cyrku";
         
    }
    else{
        echo "Witamy pierwszy raz";
        setcookie('visited',1,time()+60*60);
    }
?>    



</body>
</html>