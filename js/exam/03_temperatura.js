const tempCE = document.getElementById('tempC')
const btnK = document.getElementById('btnK')
const btnF = document.getElementById('btnF')

const result = document.getElementById('result')

btnK.addEventListener('click', (event) =>{
    let tempC = tempCE.value
    if(tempC.length == 0 || isNaN(tempC)){
        alert('Błąd danych') 
    }
    else{
        tempC = Number(tempC)
        result.innerHTML = `Temperatura w Kelwinach ${tempC+273.15}` 
    }
})
btnF.addEventListener('click', (event) =>{
    let tempC = tempCE.value
    if(tempC.length == 0 || isNaN(tempC)){
        alert('Błąd danych')
    }
    else{
        tempC = Number(tempC)
        result.innerHTML = `Temperatura w Fahrenheity ${tempC*1.8+32}`
    }
})

