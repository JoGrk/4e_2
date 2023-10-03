// 1. utwórz funkcję, która zwróci tekst będący jej parametrem, ale wszystkie wielkie litery powinny być zamienione na małe

 function bigToSmall(a){    
    return a.toLowerCase();
 }

 console.log(bigToSmall('KJDVNSVNvnsdojfnODSoSfnSOGN'));

// 2. Utwórz funkcję, która będzie miała dwa parametry i zwróci ten, który jest dłuższy

 function longerText(a,b){
    if(a.length>b.length){
        return a;
    }
    else{
        return b; 
    }
 }
 console.log(longerText("wojtas","sipiory"))


// 3. Utwórz funkcję, która sprawdzi, czy w napisie podanym jej jako parametr jest znak @, a jeśli tak, to wyświetli tekst "małpa została znaleziona na pozycji n" (gdzie n to pozycja) oraz "nie ma małpy" w przeciwnym wypadku

 function monkey(a){
    let n=a.indexOf("@")
    if (n>=0) {
        console.log(`małpa została znaleziona na pozycji ${n}`)
    }
    else{
        console.log(`nie ma małpy`)
    }
    
 }
 monkey("ala@poczta.pl")
 monkey("alapoczta")
// 4. Napisz funkcję firstFive, która zwraca pięć pierwszych liter z tekstu, który jej parametrem (użyj substr)

function firstFive(text){
    return text.substr(0,5)
}
console.log(firstFive("BłażejWojtasJestSpecjalnyNaSwójSposób"))


// 5. Napisz funkcję lastFive, która zwraca ostatnie pięć liter z tekstu, który jest jej parametrem (użyj substring)

function lastFive(text){
    return text.substring(text.length-5)
}
console.log(lastFive('Mateusz'))

// 6. Zapisz funkcję midFive, która zwraca środkowe pięć znaków z tekstu, który jest jej parametrem (użyj slice)

function midFive(text){
    let mid= text.length/2;
    return text.slice(mid-2,mid+3);
}
console.log(midFive('SiemaMati'))

// 7. Mutowalne dane to dane, którym w czasie ich istnienia możemy zmieniać części składowe. Czy tablice są mutowalne? Czy napisy są mutowalne?
let napis = "cos umiem"
let tablice = [312,312,3,1]

napis[4] = "5"
tablice[2] = 2

console.log(napis)
console.log(tablice)
 


// 8 Przygotuj funkcję changeFirstText, która zwraca tekst ze zmienionym pierwszym znakiem na znak @
function changeFirstText(text){
    // text[0] = "@"  // nie działa
    text=text.slice(1);
    console.log(text)
    return "@"+text
}
console.log(changeFirstText('jakikolwiek tekst'))

// 9. Czy metoda replace zamienia tylko pierwsze wystąpienie swojego parametru drugim parametrem, czy wszystkie? (tekst.replace(t1, t2) ). Przygotuj eksperyment, który to sprawdzi.
let text2="AcerFFGNUIDNUIDNFGsdkfn Acer"
let text3=text2.replace("Acer","Samsung");
console.log(text2)
console.log(text3)

// 10 napisz funkcję toClause, która przyjmuje jako parametr tekst i zwraca tablicę, w której każdy każde zdanie (tekst oddzielony kropką) jest osobnym elementem tej tablicy

const text4 = 'ala ma kota. a kot ma ale. ala go kocha.a kot jej nie'

let toClause = (text) => {
    return text.split(".")
}

console.log(toClause(text4))

// 11. zadeklaruj tekst o podanej treści i następnie wypisz tekst przekształcony zgodnie z jego treścią:
// A. "powiększ mnie!"

let text ="powiększ mnie!";
console.log(text.toUpperCase());
// B. 'ZAPISZ MNIE MAŁYMI LITERAMI'
text='ZAPISZ MNIE MAŁYMI LITERAMI';
console.log(text.toLowerCase());
// C. "!@#$ wytnij te dziwne znaki na początku"
text= "!@#$ wytnij te dziwne znaki na początku";
console.log(text.slice(5))
// D. 'sprawdź, czy zawieram słowo "czy" '
text= 'sprawdź, czy zawieram słowo "czy" ';
if (text.indexOf("czy") ==-1){
    console.log("NIE MA")
}
else{
    console.log("JEST");
}

// E. "podziel, ten, tekst, od, przecinków" (zwróć tablicę zawierającą słowa między przecinkami jako jej osobne elementy)
text="podziel, ten, tekst, od, przecinków";
console.log(text.split(","));
// 12.
// A.  Przygotuj funkcję server, która dla adresu e-mail, który otrzyma jako parametr, zwróci adres serwera (część po znaku @)
function server(email){
    let p=email.indexOf("@")
    return email.slice(p+1)

}
console.log(server("xyz@poczta.pl"))
// B. zmodyfikuj funkcję server tak, aby nazwa serwera była zapisana wielkimi literami
function server2(email){
    let p=email.indexOf("@")
    let s= email.slice(p+1)
     return s.toUpperCase()
}
console.log(server2("xyz@poczta.pl"))

// C.zmodyfikuj funkcję server tak, aby w przypadku, gdy parametr nie zwierał @ zwracała tekst "to nie jest prawidłowy adres e-mail).
function server3(email){
    let p=email.indexOf("@")
    
    if(p==-1)
    {
        return `to nie jest prawidłowy adres e-mail`
    }
    else
    {
        let s= email.slice(p+1)
        return s.toUpperCase()
    }

    
}
console.log(server3("xyz@poczta.pl"))
console.log(server3("xyzpoczta.pl"))

// 13. utwórz funkcję initials, która przyjmuje jako parametr tekst zawierający imię i nazwisko (np. "Jan Kowalski") i zwraca inicjały, czyli pierwszą literę imienia i pierwszą literę nazwiska, zapisaną małymi literami

let initials = (x) => {
    let a = x.split(" ")
    // let imie = a[0]
    // let nazwisko = a[1]   
    // let inicjal = imie[0] + nazwisko[0]
    let inicjal = a[0].charAt(0) + a[1].charAt(0)
    return inicjal.toUpperCase()
}

console.log(initials("Szymon Ksiazek"))

// 14. zmodyfikuj poprzednią funkcję tak, aby w przypadku, gdy osoba ma dwa imiona, do inicjału było brane tylko pierwsze imię

let initials2 = (x) =>{
    let a= x.split(" ")
    let inicjal
    if(a.length==2){
       inicjal = a[0].charAt(0) + a[1].charAt(0)
    }
    else{
        inicjal = a[0].charAt(0) + a[2].charAt(0)
    }
    return inicjal.toUpperCase();
    

}

console.log(initials2("Mati Konicki"))
console.log(initials2("Wojtek Blazej Wojtas"))