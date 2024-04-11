<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $ludzie= array(
      array('imie' => 'Jan', 'praca' => 'Budowlaniec'),
      array('imie' => 'Ewa', 'praca' => 'Astronauta'),
      array('imie' => 'Emilia', 'praca' => 'Lekarz'),      
    );

    $osoba = [ 'imie' => 'Jan', 'praca'=> 'Budowlaniec'];

    $osoba1=['imie' => 'Ewa', 'praca' => 'Astronauta'];
    $osoba2 = ['imie' => 'Emilia', 'praca' => 'Lekarz'];

    $ludzie2 = [$osoba, $osoba1, $osoba2];
    echo $ludzie2[0]['imie'];
    echo $ludzie[1]['praca'];
  
    ?>
</body>
</html>