// 1. Utwórz tablicę 8 liczb całkowitych.  Korzystając z forEach i funkcji strzałkowej 

 var imie = [1,2,3,-4,5,6,7,8]

// A. wypisz każdy element tablicy imie
imie.forEach((el) => {
    console.log(el)
})
// B. wypisz kwadrat każdego elementu tablicy imie
imie.forEach( (el) =>{
    console.log(el**2)
} )
// wypisz z tablicy imie wszystkie liczby dodatnie
imie.forEach( (el)=>{
    if(el>=0){
        console.log(el)
    }
} )
// wypisz z tablicy imie wszystkie liczby parzyste
imie.forEach((el) => {
    if(el%2==0){
        console.log(el)
    }
} ) 

// 2. Korzystając z forEach i funkcji strzałkowej 


// C. wypisz sumę elementów tablicy imie
let suma=0;
imie.forEach((el) => {
    suma+=el;
} )
console.log(suma);
// D. wypisz najmniejszy element w tablicy imie 
min=imie[0]
imie.forEach((el) =>{
    if(el<min){
        min=el
    }
})
console.log(min)
// 3. Utwórz tablicę nazwisko zawierającą 10 liczb całkowitych (mniej więcej). Utwórz funkcje, która wykorzysta forEach i funkcje strzałkowe do: 

 

// A obliczenia i zwrócenia iloczynu elementów tablicy, którą otrzyma jako swój parametr
// B. obliczenia i zwrócenia największego elementu tablicy. 
// Do nazw funkcji dodaj swoje inicjały. Wywołaj te funkcje i wypisz efekt ich działania dla tablicy nazwisko

 

// //------------------------------------------- -------------------------------------------------

// 4. Wykorzystując forEach i funkcje strzałkowe:

 

// A. Zmniejsz o 1 każdy element tablicy imie
// B. podwój każdy element tablicy nazwisko
// 5.  Utwórz funkcje, która wykorzysta forEach i funkcje strzałkowe do: 

 

// A zwiększenia o 1 każdego elementu tablicy, która jest jej parametrem i zwrócenia tak zmienionej tablicy 
// B. potrojenia każdego elementu tablicy, która jest jej parametrem i zwrócenia tak zmienionej tablicy 
// Do nazw funkcji dodaj swoje inicjały. Wywołaj te funkcje i wypisz efekt ich działania dla tablicy imie i tablicy nazwisko

 