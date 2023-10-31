const sideE=document.getElementById('side')
const btnArea=document.getElementById('btnArea')
const btnCirc=document.getElementById('btnCirc')
const result=document.getElementById('result')

btnArea.addEventListener('click',(e)=>{
    let a=sideE.value;
    if(a.length==0 || isNaN(a)){
        result.innerHTML=` Należy wpisać wartość liczbową.`
    }
    else{
        result.innerHTML=`P = ${a**2}`
    }
    
})
btnCirc.addEventListener('click',(e)=>{
    
})