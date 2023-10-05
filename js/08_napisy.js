// 1. Utwórz funkcję, która  przyjmuje dwa parametry będące napisami i zwraca true, gdy długość obu napisów jest równa oraz false w przeciwnym wypadku

function comp(x, y){
    if(x.length==y.length){
        return true;
    }
    else{
        return false;
    }
}

// przykłady:

console.log(comp("AB", "CD") ); // ➞ true
console.log(comp("ABC", "DE")); // ➞ false
console.log(comp("hello", "edabit")); // ➞ false
 

 

// 2. Wyraz został podzielony na część lewą i prawą (dwa parametry funkcji). Funkcja zwraca połączone słowo, zmieniając jednocześnie pierwszy znak na wielką literę. 

function getWord(leftText, rightText){
    let a = leftText[0].toUpperCase()+leftText.slice(1);
    return a+rightText;
}

// Przykłady:

 console.log(getWord("seas", "onal")); // ➞ "Seasonal"
 console.log(getWord("comp", "lete")); // ➞ "Complete"
 console.log(getWord("lang", "uage")); // ➞ "Language"
 

// 3.  Utwórz funkcję, która otrzymuje jako parametr tekst i zamienia na wielkie litery pierwszy znak w każdym słowie. Funkcja zwraca tak zmieniony tekst. 
function makeTitle(text){
    let tablica=text.split(" ")
    let wynik=""
    for(let i=0; i<tablica.length; i++){
        let wyraz=tablica[i]
        wynik += wyraz[0].toUpperCase()+wyraz.slice(1)+(" ");

    }
    return wynik;

}

// Przykłady:

 console.log(makeTitle("This is a title")); // ➞ "This Is A Title"
 console.log(makeTitle("capitalize every word")); // ➞ "Capitalize Every Word"
 console.log(makeTitle("I Like Pizza") ); //➞ "I Like Pizza"
 console.log(makeTitle("PIZZA PIZZA PIZZA")); // ➞ "PIZZA PIZZA PIZZA"
 
// 4.  Utwórz funkcję, która liczy ile razy w tekście podanym jako drugi parametr wystąpi znak podany jako pierwszy parametr. Funkcja odrożnia wielkie i małe litery (jeśli pierwszym argumentem jest mała litera, liczy tylko wystąpienia małej litery)
function charCount(x,text){
    let n=0;
    for(let i=0; i<text.length; i++){
        if(text[i]==x){
            n++;
        }
        
    }
    return n;
}
 

// Przykłady:

 console.log(charCount("a", "edabit")); // ➞ 1
 console.log(charCount("c", "Chamber of secrets"));  // ➞ 1
 console.log(charCount("b", "big fat bubble"));  // ➞ 4
 
// 5. Utwórz funkcję, która liczy  ile wyrazów jest w tekście, który dostaje jako swój argument. Funkcja zwraca ilość wyrazów. 
function countWords(text){
  let tablica =text.split(" ");
  return tablica.length
}
//  Przykłady:

 console.log(countWords("Just an example here move along") );  //➞ 6
 console.log(countWords("This is a test")); // ➞ 4
 console.log(countWords("What an easy task, right")); // ➞ 5
 
// 6. Utwórz funkcję, która liczy ilość znaków # i + teście podanym jako jej parametr.  Funkcja zwraca tę ilość w w postaci listy o dwóch elementach (ilosć # i ilość +). Jeśli w tekście nie ma tych znaków, funkcja zwraca listę [0,0]

// Przykłady:

// console.log(hashPlusCount("###+")); // ➞ [3, 1]
// console.log(hashPlusCount("##+++#"));  // ➞ [3, 3]
// console.log(hashPlusCount("#+++#+#++#")); // ➞ [4, 6]
// console.log(hashPlusCount(""));  // ➞ [0, 0]
 
// 7. Utwórz funkcję, która zwraca wartość true, gdy tekst podany jako jej parametr zawiera spacje oraz false w przeciwnym wypadku
function hasSpaces(text){
    if(text.indexOf(" ")==-1){
        return false;
    }
    else{
        return true;
    }
}
// Przykłady:

console.log(hasSpaces("hello"));  // ➞ false
console.log(hasSpaces("hello, world")); // ➞ true
console.log(hasSpaces(" ")); // ➞ true
console.log(hasSpaces(""));  // ➞ false
console.log(hasSpaces(",h./!@#"));  // ➞ false
 

 

 

// 8.

// Utwórz funkcję, która przyjmuje tekst jako swój parametr i zwraca środkowy znak (znaki). Jeśli tekst ma nieparzystą ilość znaków, funkcja zwraca jeden znak, jeśli parzystą, zwraca dwa znaki 

function getMiddle(text){
    let d=text.length
    if (d%2==0){
        return text.slice(d/2-1,d/2+1)      
    }
    else {
        return text[Math.floor(d/2)]
        // return text.slice(d/2,d/2+1)
    }
}
// Przykłady:

 console.log(getMiddle("test")); //➞ "es"
 console.log(getMiddle("testing"));// ➞ "t"
 console.log(getMiddle("middle"));  // ➞ "dd"
 console.log(getMiddle("A")); // ➞ "A"



 