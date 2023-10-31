

// 1. Za pomocą dowolnej pętli wypisz w konsoli imiona użytkowników, którzy są pełnoletni. 

const uzytkownicy= [
    {imie: "Marcin", wiek: 14},
    {imie: "Piotr", wiek: 18},
    {imie: "Agnieszka", wiek: 13},
    {imie: "Weronika", wiek: 20}
]

for(let el of uzytkownicy){
    console.log(el.imie)
}

// 2.Masz daną tablicę: const numbers = [2, 5, 7, 10, 34, 16, 879, 1]. Napisz funkcję, która wypisze w konsoli nową tablicę zawierającą tylko parzyste liczby z tablicy numbers.

// 3. Napisz funkcję sayHello przyjmującą jeden argument, który jest obiektem zawierającym dane osoby. Jeśli przekazany obiekt ma własność name, Twoja funkcja powinna wypisać w konsoli “Hello, name!”. Jeśli nie, funkcja ma wypisać tylko “Hello!”. Przykładowy obiekt do wywołania funkcji to const person = { name: "Jill", age: 25, hobby: "sports" }.


// 4. 
// Create a function that takes an array and a string as arguments and return the index of the string.
// // Examples

// console.log(findIndex(["hi", "edabit", "fgh", "abc"], "fgh"))// ➞ 2

// console.log(findIndex(["Red", "blue", "Blue", "Green"], "blue"))// ➞ 1

// console.log(findIndex(["a", "g", "y", "d"], "d"))// ➞ 3

// console.log(findIndex(["Pineapple", "Orange", "Grape", "Apple"], "Pineapple"))// ➞ 0
