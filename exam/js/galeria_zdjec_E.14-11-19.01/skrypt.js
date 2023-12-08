const imgTopE = document.querySelectorAll('#top-right img')

console.log(imgTopE[0])
console.log(imgTopE)

imgTopE[0].addEventListener('click', (event) => {
    console.dir(imgTopE)
})