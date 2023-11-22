// 1. utwórz funkcję, która przyjmuje jako parametr tablicę i zwraca pierwszy element tablicy. Wykorzystaj do wypisania pierwszego elementu dowolnych dwóch tablic.

function firstElement(table){
    return table[0];
}
console.log(firstElement([1,3,4]))
console.log(firstElement([5,6,7]))
// 2. Utwórz funkcję  mniej100 z dwoma parametrami, która sprawdza, czy suma jej elementów jest mniejsza niż 100. Jeśli tak, to zwraca wartość true, jeśli nie, zwraca false. Wypróbuj funkcję dla kliku różnych zestawów parametrów. 
function lessThan100(a,b){
    if(a+b<100)
        return true;
    else
        return false;
}
console.log(lessThan100(50,49))
console.log(lessThan100(50,53))

function less100(a,b){
    return a+b<100
}
 
console.log(less100(50,49))
console.log(less100(50,53))

// 3. Utwórz funkcję czyRowne z dwoma parametrami. Funkcja zwraca true, gdy są równe i false w przeciwnym wypadku. Wypróbuj funkcję dla kliku różnych zestawów parametrów. 

 function isEqual(a,b){
    return a==b;
 }

 console.log(isEqual(4,7))
 console.log(isEqual(4,4))

// 4. Utwórz funkcję czyParzyste, która sprawdza, czy jej parametr jest parzysty. Jeśli tak, to zwraca true, w przeciwnym wypadku false  Wypróbuj funkcję dla kliku różnych parametrów. 

 function isEven(x)
 {
    if(x%2==0){
        return true;
    }
    else{
        return false;
    }
    
 }
console.log(isEven(5));

function isEven2(y){
    return (y%2==0)
}
console.log(isEven2(6));
// 5. Zapisz funkcję polacz, która ma dwa parmatery: imię i nazwisko i zwraca połączone je jako jeden tekst (imie nazwisko). Wykorzystaj funkcję do połączenia i wypisania kilku imion i nazwisk.

function link(firstName, surName ){
    return firstName + ' ' + surName;
};
console.log(link(   'Mateusz', `Baran`))
// 6. Zatrudniłeś trzech programistów i im płacisz. Napisz funkcję, która jako parametr przyjmuje trzy różne stawki dla programistów i zwraca różnicę między największą wartością a najmniejszą. Przykład: programista(147,33,526) zwraca 493, a programista(33,72,74) wraca 41

function pay(x,y,z){
    return payMax(x,y,z)-payMin(x,y,z)
}
function payMax(a,b,c){
  if(a>b){
    if(a>c){
        return a
    }
    else{
        return c;
    }
    
  }
  else{
    if(b>c){
        return b;
    }
    else{
        return c;

    }
  }
}
 function payMin(a,b,c){
  if(a<b){
    if(a<c){
        return a
    }
    else{
        return c;
    }
    
  }
  else{
    if(b<c){
        return b;
    }
    else{
        return c;
        
    }
  }
}

 console.log(pay(3, 5, 2))

 

// 7. Utwórz funkcję czyTrojkat, która przyjmuje jako parametry trzy liczby i sprawdza, czy można z nich utworzyć trójkąt. Przykład: czyTrojkat(2,3,4) zwraca true, a czyTrojkat(4,3,8) zwraca false (najdłuższy bok musi być mniejszy od sumy dwóch pozostałych boków)

 function czyTrojkat(a,b,c){
    const sorted = [a,b,c].sort()
    return (sorted[0] + sorted[1]) > sorted[2]
 }
$
console.log("1",czyTrojkat(1,2,3))
console.log("2",czyTrojkat(1,1,3))