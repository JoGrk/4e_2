const areaE= document.getElementById('area')
const tiles20E= document.getElementById('tile20')
const tiles25E= document.getElementById('tile25')
const btnE= document.getElementById('btn')
const result= document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    let area=Number(areaE.value)

    if(tiles20E.checked){
        result.innerHTML=`Koszt kafelokowania:${area*70}`
    }
    else if(tiles25E.checked){
        result.innerHTML=`Koszt kafelkowania:${area*80}`
    }
    else{
        result.innerHTML=`Trzeba wybrac:`
    }
})

