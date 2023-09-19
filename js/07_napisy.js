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

// 5. Napisz funkcję lastFive, która zwraca ostatnie pięć liter z tekstu, który jest jej parametrem (użyj substring)

// 6. Zapisz funkcję midFive, która zwraca środkowe pięć znaków z tekstu, który jest jej parametrem (użyj slice)

// 7. Mutowalne dane to dane, którym w czasie ich istnienia możemy zmieniać części składowe. Czy tablice są mutowalne? Czy napisy są mutowalne?

 

//  A. utwórz funkcję changeFirst z jednym parametrem, która zmienia pierwszy element swojego parametru na znak @
// B. Zadeklaruj listę (tablicę) zawierającą dowolne znaki oraz dowolny tekst
// C. Wypisz efekt działania funkcji changeFirst  na  liście (tablicy)  oraz na tekście
// 8 Przygotuj funkcję changeFirstText, która zwraca tekst ze zmienionym pierwszym znakiem na znak @

// 9. Czy metoda replace zamienia tylko pierwsze wystąpienie swojego parametru drugim parametrem, czy wszystkie? (tekst.replace(t1, t2) ). Przygotuj eksperyment, który to sprawdzi.

// 10 napisz funkcję toClause, która przyjmuje jako parametr tekst i zwraca tablicę, w której każdy każde zdanie (tekst oddzielony kropką) jest osobnym elementem tej tablicy

// 11. zadeklaruj tekst o podanej treści i następnie wypisz tekst przekształcony zgodnie z jego treścią:

 

// A. "powiększ mnie!"
// B. 'ZAPISZ MNIE MAŁYMI LITERAMI'
// C. "!@#$ wytnij te dziwne znaki na początku"
// D. 'sprawdź, czy zawieram słowo "czy" '
// E. "podziel, ten, tekst, od, przecinków" (zwróć tablicę zawierającą słowa między przecinkami jako jej osobne elementy)
// 12.

 

// A.  Przygotuj funkcję server, która dla adresu e-mail, który otrzyma jako parametr, zwróci adres serwera (część po znaku @)
// B. zmodyfikuj funkcję server tak, aby nazwa serwera była zapisana wielkimi literami
// C.zmodyfikuj funkcję server tak, aby w przypadku, gdy parametr nie zwierał @ zwracała tekst "to nie jest prawidłowy adres e-mail).
// 13. utwórz funkcję initials, która przyjmuje jako parametr tekst zawierający imię i nazwisko (np. "Jan Kowalski") i zwraca inicjały, czyli pierwszą literę imienia i pierwszą literę nazwiska, zapisaną małymi literami

// 14. zmodyfikuj poprzednią funkcję tak, aby w przypadku, gdy osoba ma dwa imiona, do inicjału było brane tylko pierwsze imię