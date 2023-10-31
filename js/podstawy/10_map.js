let koty = ["Alojzy", "Ares", "Faflun"];
console.log(koty)
let kotyBig = koty.map( (el) => { return el.toUpperCase() } )
console.log(kotyBig)


// // tablicę liczb   
// // przemapujcie na tablice kwadratow  tych liczb

let liczby  = [1, 3, 8,5 ,8 ,10, 8 , 9];

console.log(liczby)
let squareNumbers = liczby.map( (el) => {return el*el} )
console.log(squareNumbers)

 

 

 

// 1. Funkcja zwiekszElementy przyjmuje tablicę liczb jako argument, zwiększa o 1 każdy element tej tablicy i zwraca tak powiększoną:
function zwiekszElementy(table){
    return table.map( (cos) => {return cos+1})

}
 

 console.log(zwiekszElementy([0, 1, 2, 3])) // ➞ [1, 2, 3, 4]
 console.log(zwiekszElementy([2, 4, 6, 8])) // ➞ [3, 5, 7, 9]
 console.log(zwiekszElementy([-1, -2, -3, -4]))// ➞ [0, -1, -2, -3]

// 2. Funkcja pomnozElementy przyjmuje jako argument tablicę liczb, mnoży każdy jej element przez 2 i zwraca tak powiększoną tablicę

 function pomnozElementy(table){
    return table.map((el) => {return el*2})
 }

 

 console.log(pomnozElementy([2, 5, 3])) //➞ [4, 10, 6]
 console.log(pomnozElementy([1, 86, -5])) //➞ [2, 172, -10]
 console.log(pomnozElementy([5, 382, 0])) //➞ [10, 764, 0]
// 3. funkcja dlugoscWyrazow ma jako parametr tablicę tekstów, zwraca tablicę z długościami tych tekstów

 function dlugoscWyrazow(table){
    return table.map((el)=>{return el.length})
 }

 

console.log(dlugoscWyrazow(["hello", "world"])) //➞ [5, 5]
console.log(dlugoscWyrazow(["Halloween", "Thanksgiving", "Christmas"])) //➞ [9, 12, 9]
console.log(dlugoscWyrazow(["She", "sells", "seashells", "down", "by", "the", "seashore"])) //➞ [3, 5, 9, 4, 2, 3, 8]

// 4. Funkcja goraDol przyjmuje jako argument tablicę liczb. Zmienia ją zwiększając o 1 elementy nieparzyste oraz zmniejszając o 1 elementy parzyste

 function goraDol(table){
    return table.map((el)=>{
        if (el%2==0){
            return el-1
        }
        else {
            return el+1
        }
    })
 }


 

console.log(goraDol([1, 2, 3, 4, 5])) //➞ [2, 1, 4, 3, 6]
console.log(goraDol([3, 3, 4, 3]))// ➞ [4, 4, 3, 4]
console.log(goraDol([2, 2, 0, 8, 10]))// ➞ [1, 1, -1, 7, 9]
// 5. funkcja rozszerzenia zwraca tablicę rozszerzeń nazw plików z tablicy, którą dostaje jako swój argument

 function rozszerzenia(table){
    return table.map((el)=>{
        let kropka=el.indexOf('.')
        return el.slice(kropka+1)
    })
 }

 

console.log( rozszerzenia(["code.html", "code.css"]))// ➞ ["html", "css"]
console.log( rozszerzenia(["project1.jpg", "project1.pdf", "project1.mp3"]) )// ➞ ["jpg", "pdf", "mp3"]
console.log( rozszerzenia(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"]) ) // ➞ ["rb", "cpp", "py", "js"]
