// 1. Utwórz funkcję powitanie, która pobiera jako argument imie i wypisuje komunikat "witam. imie - miłego dnia życzę!" (w miejscu imię wstawia wartość parametru). Wykorzystaj funkcję do powitania kilku kolegów/.koleżanek z klasy

function welcome (firstName){
    console.log(`Witam. ${firstName} - miłego dnia życzę!`)
} 

welcome(`Sipiory`);
welcome("Książek");


// 2. Utwórz funkcję iloczyn, która ma dwa argumenty i zwraca ich iloczyn. Wywołaj funkcję dla obliczenia iloczynu liczb 34 i 99 oraz 33 i 7

function multiplication (x,y){
    return x*y;
}

console.log(multiplication(34,99));
console.log(multiplication(33,7))

// 3. utwórz funkcję kw, która ma jeden argument i podnosi go do kwadratu. Poza funkcją zadeklaruj dwie zmienne x i y (x jest równy 345, y równy 678). Wykorzystując funkcję kw  wyświetl kwadrat z x, kwadrat z y, a następnie kwadrat z sumy liczb x i y. 

function square(z){
    return z*z;
}
let x=345;
let y=678;

console.log(square(x))
console.log(square(y))
console.log(square(x+y))


// 4. utwórz funkcję, która wypisuje koszt malowania pokoju. Funkcja przyjmuje jako argument powierzchnię pokoju, cenę za metr powierzchni, i koszt farby. Wypisuje koszt w postaci wyrażenia: koszt malowania pokoju o powierzchni powierzchnia wynosi razem  
function cost(meter,priceMeter,price)
{
    
    console.log(`Koszt malowania pokoju o powierzchni ${meter} wynosi razem ${meter*price+priceMeter}`);
}

cost (30,10,300);

// A. koszt to powierzchni*cena + koszt farby
// B. wykorzystaj funkcję do obliczenia kosztu malowania pokoju 30m farbą w cenie 300zł, przy założeniu ceny 10 za metr
// C. dodaj do funkcji wartości domyślne: cena za metr to 10, a koszt farby 500. Wykorzystaj funkcję do obliczenia kosztu malowania 20 metrowego pokoju wykorzystując domyślne ceny
function cost2(meter,priceMeter=10,price=500)
{
    
    console.log(`Koszt malowania pokoju o powierzchni ${meter} wynosi razem ${meter*price+priceMeter}`);
}
cost2(20);