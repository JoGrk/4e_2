const inputE = document.querySelector('#up input')
const buttonE = document.querySelector('#up button')
const downE = document.getElementById('down')
const colorE = document.querySelector('#top input')
const btnE = document.querySelector('#top button')
const topE = document.querySelector('#top')
const midE = document.querySelector('#mid')
const botE = document.querySelector('#bot')
const upE = document.querySelector('#up')


function addImg(link){
    let imgE = document.createElement("img")
    imgE.src = link
    downE.appendChild(imgE)
    
}

buttonE.addEventListener('click', (e)=>{
    const imgReg = /^https.*\.jpe+g$/i
    let imgLink = inputE.value 
    if(imgReg.test(imgLink)){
        addImg(imgLink)
    }
    inputE.value=""
})

downE.addEventListener('click',(e)=>{
    downE.removeChild(e.target)
})

btnE.addEventListener('click',(e)=>{
    console.log(`hsl(${colorE.value}, 100%, 90%)`)
    console.dir(topE)
    
    topE.style.backgroundColor=`hsl(${colorE.value}, 100%, 90%)`
    midE.style.backgroundColor=`hsl(${colorE.value}, 100%, 80%)`
    botE.style.backgroundColor=`hsl(${colorE.value}, 100%, 70%)`
    upE.style.backgroundColor=`hsl(${colorE.value}, 100%, 95%)`
})