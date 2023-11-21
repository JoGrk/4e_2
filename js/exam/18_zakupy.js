const btn =document.querySelector("button")
const formatE = document.getElementById('format')
const cuffingE = document.getElementById('cuffing')
const stairsE = document.getElementById('stairs')
const discountE=document.getElementById('discount')
const areaE = document.querySelector('#area')
const h3E=document.querySelector('h3')

btn.addEventListener("click",(e)=>{
    let price = Number(formatE.value)
    let area = Number(areaE.value);
    if(cuffingE.checked){
        price = price*1.1
    }
    if(stairsE.checked){
        price = price*1.2
    }

    if(discountE.checked){
        price= price*0.95
    }
    if(area<10){
        price=price*1.1;
    }
    if(area>50){
        price=price*0.9
    }
    console.log(price)

    h3E.innerHTML=(price*area)
})

