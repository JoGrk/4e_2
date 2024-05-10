 <?php
    session_start();
    $_SESSION['nygus']='wartosc';

    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   
    <p>Witamy na stronie została rozpocząta sesja</p>
    <p>Idyntyfikatorem sesjii jest <?php echo session_id(); ?></p>
   
    <p> Wartoscia zmiennej jest 
        <?php echo $_SESSION['nygus']?>
    </p>
    <p><a href="02.php">link</a></p>

</body>
</html>