<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>
        <?php
        echo date("d m Y");
        ?>
    </h1>
    <table>
        <tr><td><?php
        echo date("Y-m-d");
        ?></td></tr>
        
        <tr>
            <td>
                <?php
                    echo date("d/m/Y");
                ?>
            </td>
        </tr>
        <tr>
            <td>
                <?php
                    echo date("m/d/Y");
                ?>
            </td>
        </tr>
    </table>
    <?php
    
    echo "hello world";
    
    ?>
    <?php
        echo phpinfo();
    ?>
    <h2>
    <?php
    echo "&copy; 2019-".date("Y"); 
    ?>
    </h2>
    
</body>
</html>
