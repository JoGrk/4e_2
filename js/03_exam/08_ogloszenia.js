const countE=document.getElementById('count')
const discountE=document.getElementById('discount')
const btnE=document.getElementById('btn')
const resultE=document.getElementById('result')

btnE.addEventListener('click',(event) =>{
    let count=parseInt(countE.value)
    let price
    if(count >=51){
        price=1 ;
    }
    else{
        price=2 ;
    }
    
    if(discountE.checked){
        price = price-0.20;
    }

    resultE.innerHTML=`Koszt ogłoszeń: ${price*count} PLN`
})
