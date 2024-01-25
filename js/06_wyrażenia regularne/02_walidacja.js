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
    const zipcodeReg = /^[0-9]{2}-[0-9]{3}/
    const adresReg= /^[a-z]{3,}.*[0-9]/i
    
    
    if(surnameE.value.length < 3){
        surnameErrorE.innerHTML="zbyt krótkie"
        // surnameE.style.backgroundColor="pink"
        surnameE.classList.add('error')
    }
    else{
        resE.innerHTML=surnameE.value +"<br>"
        surnameE.classList.remove('error')
        surnameErrorE.innerHTML=""
        
    }

    if(!emailReg.test(emailE.value)){
        emailErrorE.innerHTML='Adres domeny staszic.eu'
        emailE.classList.add('error')
    }
    else{
        resE.innerHTML+=emailE.value+'<br>'
        emailE.classList.remove('error')
        emailErrorE.innerHTML=""
    }
    if(!zipcodeReg.test(zipcodeE.value)){
        zipcodeErrorE.innerHTML="zly kod pocztowy"
        zipcodeE.classList.add('error')
    }
    else{
        resE.innerHTML+=zipcodeE.value+"<br>"
        zipcodeE.classList.remove('error')
        zipcodeE.innerHTML=""
    }

     



})
