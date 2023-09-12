// 1. Why pay a fortune teller when you can just program your fortune yourself?

function tellFortune(numberChildren, partner, location, jobTitle){
    console.log(`You will be a ${jobTitle} in ${location}, and married to ${partner} with ${numberChildren} kids`);
}
tellFortune(3,"Błazej","Sipiory","policjant");


// 2. You know how old your dog is in human years, but what about dog years? Calculate it!

function calculatedogage(age){
    let dogAge= age*7
    console.log(`"Your doggie is ${dogAge} years old in dog years!"`)
}

calculatedogage(12)





// 3. Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!
function calculateSupply(age, amountPerDay){
    const maxAge = 100;
    console.log(`You will need ${(maxAge - age)*365*amountPerDay} to last you until the ripe old age of ${maxAge}`)
}
calculateSupply(19, 2);
calculateSupply(50, 1)


// 4. 
// Create 2 functions that calculate properties of a circle, using the definitions here.

// Create a function called calcCircumfrence:
function calcCircumfrence(radius){
    console.log(`The circumference is ${radius*2*3.14}`)
        
}
function calcArea(radius){
    console.log(`The area is ${3.14*radius**2}`)
};
calcCircumfrence(5);
calcArea(5);
// 5. 

// It's hot out! Let's make a converter based on the steps here.

function celsiusToFahrenheit(celsius){
    console.log(`${celsius}°C is ${9/5*celsius+32}°F`)
}
function fahrenheitToCelsius(fahrenheit){
    console.log(`${fahrenheit}°F is ${(fahrenheit-32)*5/9}`)
}
celsiusToFahrenheit(2)
fahrenheitToCelsius(2)



// 6. Function `reverseNum()` returns the reversed number for the given argument number value. 
function reverseNum(number){
    return 1/number;
}
console.log(reverseNum(2));
