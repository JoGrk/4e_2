// funkcje zamienia minuty  na sekundy
function toSeconds(minutes){
    console.log(minutes*60)
}

toSeconds(30)

const toSecondsW = function (minutes){
    console.log(minutes*60)
}

toSecondsW(40)

const toSecondsS = (minutes) => {
    console.log(minutes*60)
}

// 1. Funkcję obliczającą i zwracającą wartość swoich dwóch parametrów sumy
function oblicza(a,b){
    return a+b;
}
console.log(oblicza(3,5));

const oblicza2 = (a,b) => {return a+b;}

console.log('daniel', 'sobiech');

const oblicza3 = function(a,b){
    return a+b;
}

console.log(oblicza3(10,25))
console.log(oblicza3(`tekst`, 23))

// 2. Funkcję wypisującą kwadrat ze swojego parametru
function kwadrat(x) {
    return x*x;
}
console.log(kwadrat(3))


const kwadrat2 = x => x*x;
console.log(kwadrat2(4));



// 3. Funkcję wypisującą tekst: "Hello world";

  function HelloWorld() {
    console.log('Hello World')
  }
  HelloWorld()

// 4. Funkcję wypisującą twoje imię i nazwisko

// 5. Funkcję obliczającą przekątną w kwadracie o boku a

// 6. Funkcję wypisującą pierwszy parametr podniesiony do potęgi podanej przez drugi parametr