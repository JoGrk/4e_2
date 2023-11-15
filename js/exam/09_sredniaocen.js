const n1E=document.getElementById('n1')
const n2E=document.getElementById('n2')
const n3E=document.getElementById('n3')
const btnE=document.getElementById('btn')
const resultE=document.getElementById('result')

btnE.addEventListener('click', (event)=>{
    let n1=n1E.value
    let n2=n2E.value
    let n3=n3E.value

    if (n1.length == 0 || isNaN(n1) ||
    n2.length == 0 || isNaN(n2) ||
    n3.length == 0 || isNaN(n3)){
        alert("wpisz poprawne dane")
    }
    else{
        n1=parseFloat(n1)
        n2=parseFloat(n2)
        n3=parseFloat(n3)
        resultE.innerHTML=(n1+n2+n3)/3
    }
    
})