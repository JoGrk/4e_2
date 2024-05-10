<?php
session_start();
$_SESSION['inna']=45;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h4>witamy w drugiej sesji: 
        <?php echo session_id(); ?></h4>

        <?php echo $_SESSION['nygus']; ?>
        <?php echo $_SESSION['inna']; ?>
    <p><a href="03.php"></a></p>
</body>
</html>