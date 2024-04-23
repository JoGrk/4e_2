<?php

$ile = $_COOKIE['ile'] ?? null;
if($ile) {
    $ile++;
}else {
    $ile = 1;
}
setcookie('ile',$ile);
$name = $_GET['name'] ?? null;
echo "To $ile odwiedziny";
if($name) {
    setcookie('name',$name);
    echo "Dziekujemy za podanie danych! Rozpoznano uzytkownika";
}else {
    include('header.html');
    include('form.html');
    include('footer.html');
}
