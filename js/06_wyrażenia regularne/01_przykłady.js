const wyr1 = /[0-9]{3}/i
console.log( wyr1.test("sldfhjdfh567ssdklfjs")); // true
console.log (wyr1.test("dfd7896")) // true
console.log (wyr1.test("hsdfh45jsdjdf1")) // false

const wyr2 = /^[0-9]{3}$/
console.log (wyr2.test("hsdfh45jsdjdf1")) // false
console.log (wyr2.test("dfd7896")) //false
console.log (wyr2.test("896")) //true
console.log (wyr2.test("8962")) //false