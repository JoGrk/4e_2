const todoE = document.querySelector('#todo')
const buttonE = document.querySelector('#top button')
const mainE = document.querySelector('main')

buttonE.addEventListener('click', (e)=>{
    e.preventDefault()
    let divE=document.createElement('div')
    let h2E=document.createElement('h2')
    h2E.innerHTML=todoE.value
    divE.appendChild(h2E)
    mainE.appendChild(divE)

})