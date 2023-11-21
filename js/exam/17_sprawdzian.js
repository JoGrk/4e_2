const naglowek = document.querySelector('h1')
const aE = document.getElementById('a')
const bE = document.getElementById('b')
const btnE = document.getElementById('btn')
const resultE = document.getElementById('result')

naglowek.addEventListener('click', (event)=>{
    naglowek.style.color='yellow'
})

btnE.addEventListener('click', (event)=>{
    let a = Number(aE.value)
    let b = Number(bE.value)
    resultE.innerHTML=a+b
})