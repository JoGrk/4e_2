const btn1 = document.getElementById('btn1')
const btn2 = document.getElementById('btn2')
const btn3 = document.getElementById('btn3')
const btn4 = document.getElementById('btn4')

const firstE = document.querySelector('#first')
const secondE = document.querySelector('#second')
const resultE = document.querySelector('#result')


btn1.addEventListener('click', (event)=>{
    let a = Number(firstE.value)
    let b= Number(secondE.value)
    resultE.innerHTML=`${a}+${b}=${a+b}`
})

btn2.addEventListener('click', (event)=>{
    resultE.innerHTML=`${firstE.value}-${secondE.value}=${firstE.value-secondE.value}`
})

btn3.addEventListener('click', (event)=>{
    resultE.innerHTML=`${firstE.value}*${secondE.value}=${firstE.value*secondE.value}`
})

btn4.addEventListener('click', (event)=>{
    resultE.innerHTML=`${firstE.value}/${secondE.value}=${firstE.value/secondE.value}`
})