<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $month = date("m");
    if ($month == 8){
        echo "jest sierpień, więc jest naprawdę gorąco";
    }
    else{
        echo "to nie jest sierpień, nie jest więc tak naprawdę gorąco";
    }
    
    switch($month){
        case 2:
            echo "ostatnia szansa na chłód";
            break;
        case 3:
        case 4:
            echo "wiosna";
            break;
        case 5:
            echo "najpiękniejszy";
            break;
        case 6:
        case 7:
        case 8:
            echo "lato";
            break;
        case 9:
        case 10:
            echo "jesień";
            break;
        case 11:
            echo "buro i ponuro";
            break;
        case 12:
        case 1:
            echo "a może zima?";
            break;
        default:
            echo "miesiąc nie rozpoznano lol";
            break;

    }
    ?>

</body>
</html>