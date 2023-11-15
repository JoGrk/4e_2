const sizeE=document.getElementById('size')
const styleE=document.getElementById('style')
const btnRE=document.getElementById('btnR')
const btnGE=document.getElementById('btnG')
const btnBE=document.getElementById('btnB')
const resultE=document.getElementById('result')

btnRE.addEventListener('click',(event)=>{
    resultE.style.color='red'
    resultE.style.fontStyle=styleE.value
    resultE.style.fontSize=sizeE.value+'%'
})
btnGE.addEventListener('click',(event)=>{
    resultE.style.color='green'
    resultE.style.fontStyle=styleE.value
    resultE.style.fontSize=sizeE.value+'%'
})
btnBE.addEventListener('click',(event)=>{
    resultE.style.color='blue'
    resultE.style.fontStyle=styleE.value
    resultE.style.fontSize=sizeE.value+'%'
})