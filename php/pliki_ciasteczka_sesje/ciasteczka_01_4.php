

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
        
        $ciastko = $_COOKIE['visited'];
        $ciastko++;
        setcookie('visited',$ciastko,time()+60*60);
        echo "Witamy ponownie w cyrku $ciastko raz";
         
    }
    else{
        echo "Witamy pierwszy raz";
        setcookie('visited',1,time()+60*60);
    }
?>    



</body>
</html>