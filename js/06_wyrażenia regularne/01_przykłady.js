

// 1. trzy cyfry obok siebie gdziekolwiek
const wyr1 = /[0-9]{3}/i
console.log("trzy cyfry obok siebie gdziekolwiek")
console.log( wyr1.test("sldfhjdfh567ssdklfjs")); // true
console.log (wyr1.test("dfd7896")) // true
console.log (wyr1.test("hsdfh45jsdjdf1")) // false


const wyr2 = /^[0-9]{3}$/
console.log("trzy cyfry  tylko i wyłącznie")
console.log (wyr2.test("hsdfh45jsdjdf1")) // false
console.log (wyr2.test("dfd7896")) //false
console.log (wyr2.test("896")) //true
console.log (wyr2.test("8962")) //false



 

// 3. trzy cyfry obok siebie na początku i dodatkowe trzy obok siebie  na końcu

  let wyr = /^[0-9]{3}.*[0-9]{3}$/
console.log("trzy cyfry obok siebie na początku i dodatkowe trzy na końcu")
console.log (wyr.test("hsdfh345jsdjdf1")) // false
console.log (wyr.test("21dfd7t896")) //false
console.log (wyr.test("896233")) //true
console.log (wyr.test("8962")) //false

// 4. co najmniej cztery znaki alfanumeryczne
 wyr =/\w{4,}/
console.log("co najmniej cztery znaki alfanumeryczne")
console.log (wyr.test("hsdfh345jsdjdf23")) // true
console.log (wyr.test("2df")) //false
console.log (wyr.test("123*")) //false
// 5. wyłącznie małe lub wielkie litery a, b, d lub f
wyr = /^[abdf]*$/i
console.log("wyłącznie małe lub wielkie litery a, b, d lub f")
console.log (wyr.test("hsdfh345jsdjdf23")) //false
console.log (wyr.test("abdfzle")) // false
console.log (wyr.test("fdba")) //true
console.log (wyr.test("bffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffad")) //true

// 6. na początku nie może być litery x ani litery z
console.log('bez "x" i "z" na pozątku')
wyr =/^[^xz]/
console.log(wyr.test('xzab')) //false
console.log(wyr.test('abxz')) //true

// 7. kod pocztowy
console.log('kod pocztowy')
wyr =/^[0-9]{2}-[0-9]{3}$/
console.log(wyr.test('12-123')) //true

console.log(wyr.test('123-23')) //false 

// 8. można wpisać tylko cyfry
const wyr8= /^[0-9]*$/ 
console.log("poda tylko cyfry")
console.log(wyr8.test('1234')) //true
console.log(wyr8.test('xef45')) //false
// 9. we wzorcu musi wystąpić znak / (np. AC/DC)
console.log('we wzorcu musi wystąpić znak / (np. AC/DC)')
wyr =/\//
console.log(wyr.test("dwa/da"))
console.log(wyr.test("dwad"))
console.log(wyr.test("/"))
// 10. we wzorcu musi być kropka

// 11. we wzorcu musi być na końcu kropka i od 2 do 3 liter od a do z (duże też pasują)
console.log('we wzorcu musi być na końcu kropka i od 2 do 3 liter od a do z (duże też pasują)')
wyr =/\.[a-z]{2,3}$/i
console.log(wyr.test('asz.')) //false
console.log(wyr.test('.as')) //true
console.log(wyr.test('.asgd')) //false
console.log(wyr.test('dddd.as  gd')) //false

// 12. adres e-mail znaki(litera, cyfra,_.-), małpa, znaki alfanumeryczne razem z _ kroka i od 2 do 3 znaków (liter bez _)
console.log('12')
wyr = /^\w+@\w+\.[a-z0-9]{2,3}$/i
console.log(wyr.test('asz@dsa.dga')) //true
console.log(wyr.test('__@as.a_s')) //false
console.log(wyr.test('sgfsdg@_dsa.asgd')) //false
console.log(wyr.test('gkdafjlg@sfdf.dsa')) //true

// 13. imię i nazwisko (co najmniej dwie litery, biały znak, co najmniej dwie litery). I dlaczego to nie jest takie proste?
console.log('13')
const wyr13=/^[a-z]{2,}\s[a-z]{2,}$/i
console.log(wyr13.test('Jakub Jarczyński jest the best'));//false
console.log(wyr13.test('NM Kowalski')); //true
console.log(wyr13.test('adhaibafadaw')); //false
