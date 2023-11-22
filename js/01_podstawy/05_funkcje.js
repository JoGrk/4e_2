function regards(timeOfDay,name){
    console.log(`good ${timeOfDay}, ${name}`)
}

regards('night','wojtas')


function average(x,y){
    return (x+y)/2

}
console.log(average(2,5));

function triple(x){
    return x+x+x;
};

console.log(triple('wojtas '))

function isOdd(number){
    return number%2!=0 ;
    
}
console.log(isOdd(6));
console.log(isOdd(5));

function isDivided(a,b){
    return a%b==0
}

console.log(isDivided(30,4))
console.log(isDivided(30,5))

function isLeapYear(year){
    return isDivided(year,4) && !isDivided(year,100) || isDivided(year,400)
}
console.log(isLeapYear(2000))
console.log(isLeapYear(2023))

function halfOf(number){
    return number/2;
}
console.log(halfOf(2))
console.log(halfOf(2137))

function IsLongerThan(text,number){
    return text.length>number;
}
console.log(IsLongerThan(`sos`,2))
