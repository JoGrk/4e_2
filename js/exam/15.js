const kawaE = document.getElementById('kawa')
const wagaE = document.getElementById('waga')
const btnE = document.getElementById('btn')
const resultE = document.getElementById('result')

btnE.addEventListener('ckick',(e)=>{
    if(kawaE.value==1){
        resultE.innerHTML=`Koszt zamówienia wynosi${wagaE*5}`
    }
    else if(kawaE.value==2){
        resultE.innerHTML=`Koszt zamówienia wynosi${wagaE*7}`
    }
    else if(kawaE.value==3){
        resultE.innerHTML=`Koszt zamówienia wynosi${wagaE*6}`
    }
    else{
        resultE.innerHTML=`Koszt zamówienia wynosi 0`
    }
})