let koty = ["Brzęczysław", "Ares", "Faflun", "Abi"];

let dobreKoty = koty.filter( (el) => {
    if(el.length>4) {
        return true
    } else {
        return false
    }
} ) 

console.log(dobreKoty)


// 1. Funkcja bezNieparzystych przyjmuje tablicę liczb i zwraca tablicę, w której będą tylko elementy parzyste (eliminuje elementy nieparzyste)

    function bezNieparzystych (tablica){

        return tablica.filter((el) =>{
            if(el%2==0){
                return true
            }
            else {
                return false
            }
        })

    }

 

console.log (bezNieparzystych([1, 2, 3, 4, 5, 6, 7, 8])); // ➞ [2, 4, 6, 8]
console.log(bezNieparzystych([43, 65, 23, 89, 53, 9, 6])); // ➞ [6]
console.log(bezNieparzystych([718, 991, 449, 644, 380, 440])); // ➞ [718, 644, 380, 440]
 

 

// 2. Funkcja filtrujDlugosc zwraca tablicę, w której będą tylko te liczby całkowite z tablicy będącej pierwszym parametrem, które mają długość podaną w drugim parametrze

 function filtrujDlugosc(table, a){
    return table.filter((el)=> {
        if(el.toString().length==a){
            return true;
        }
        else 
            return false;
    })
 }
console.log(filtrujDlugosc([88, 232, 4, 9721, 555], 3)); // ➞ [232, 555]
// zwraca tablicę trzy cyfrowych liczb
console.log(filtrujDlugosc([2, 7, 8, 9, 1012], 1)); // ➞ [2, 7, 8, 9]
// zwraca tylko jednocyfrowe liczby
console.log(filtrujDlugosc([32, 88, 74, 91, 300, 4050], 1)); // ➞ []
// nie ma liczb jednocyfrowych - zwraca pustą tablicę
console.log(filtrujDlugosc([5, 6, 8, 9], 1)); // ➞ [5, 6, 8, 9]
// wszystkie liczby są jednocyfrowe - zwraca oryginalną tablicę
 

//  https://stackoverflow.com/questions/14879691/get-number-of-digits-with-javascript

// 3. Funkcja filtrujTablice otrzymuje jako parametr tablicę liczb całkowitych i tekstów. Usuwa z niej teksty i zwraca tablicę liczb (użyj np. Number.isInteger()

 function filtrujTablice(table){
    return table.filter((el)=>{
        if(Number.isInteger(el)){
            return true
        }
        else{
            return false
        }
    })
 }

console.log(filtrujTablice([1, 2, "a", "b"])); // ➞ [1, 2]
console.log(filtrujTablice([1, "a", "b", 0, 15])); // ➞ [1, 0, 15]
console.log(filtrujTablice([1, 2, "aasf", "1", "123", 123])); // ➞ [1, 2, 123]
 

// 4. Zapisz funkcję indeksZnaku, która zwraca tablicę zawierającą indeks pierwszego i ostatniego wystąpienia znaku podanego jako drugi argument w tablicy podanej jako pierwszy parametr

 

// console.log(indeksZnaku("hello", "l")); // ➞ [2, 3]
// // pierwsze "l" ma indeks 2, ostatnie "l" ma indeks 3.

// console.log(indeksZnaku("circumlocution", "c")); // ➞ [0, 8]
// // pierwsze "c" ma indeks 0, ostatnie "c" ma indeks 8.

// console.log(indeksZnaku("happy", "h")); // ➞ [0, 0]
// // jest tylko jedno "h" , więc indeks pierwszego i ostatniego wystąpienia to 0 

// console.log(indeksZnaku("happy", "e")); // ➞ undefined
// // litery "e" nie ma w tekście "happy", więc zwraca undefined.
// 5. Argumentem funkcji szukajNemo jest tekst. Funkcja zwraca tekst: "znalazłem Nemo na pozycji [tu indeks miejsca Nemo - czyli które jest to słowo w tekście]!" Jak nie znajdzie, wypisuje tekst "Nie znalazłem Nemo smutny "  ? i ! są zawsze oddzielone spacją od ostatniego słowa

 

// console.log(szukajNemo("I am finding Nemo !")); // ➞ "Znalazłem Nemo na pozycji 4!"
// console.log(szukajNemo("Nemo is me")); // ➞ "Znalazłem Nemo na pozycji 1!"
// console.log(szukajNemo("I Nemo am")); // ➞ "Znalazłem Nemo na pozycji 2!"
// 6. napisz funkcje powtarzaj, która zwraca tablicę z tyle razy powtórzonym pierwszym parametrem, ile wskazuje drugi parametr:

 

 

// console.log(powtarzaj("edabit", 3)); // ➞ ["edabit", "edabit", "edabit"]
// console.log(powtarzaj(13, 5)); // ➞ [13, 13, 13, 13, 13]
// console.log(powtarzaj("7", 2)); // ➞ ["7", "7"]
// console.log(powtarzaj(0, 0)); // ➞ []
