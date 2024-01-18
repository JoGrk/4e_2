const butE = document.getElementById(`send`)
const surnameErrorE = document.getElementById(`surname-error`)
const surnameE = document.getElementById(`surname`)
const emailE = document.getElementById(`email`)
const emailErrorE = document.getElementById(`email-error`)
const zipcodeE = document.getElementById(`zipcode`)
const zipcodeErrorE = document.getElementById(`zipcode-error`)
const addresE = document.getElementById(`addres`)
const addresErrorE = document.getElementById(`addres-error`)
const resE = document.getElementById(`res`)


butE.addEventListener('click',(e)=>{
    e.preventDefault()

    const emailReg = /^\w{4,}@staszic.eu$/i

    
    if(surnameE.value.length < 3){
        surnameErrorE.innerHTML="zbyt krótkie"
        surnameE.style.backgroundColor="pink"
    }
    else(
        resE.innerHTML=surnameE.value +"<br>"
        
    )

    if(!emailReg.test(emailE.value)){}
     



})
