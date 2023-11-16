const firstNameE = document.getElementById('firstName')
const surNameE = document.getElementById('surName')
const emailE = document.getElementById('email')
const serviceE = document.getElementById('service')
const copyE = document.getElementById('copy')
const sendE = document.getElementById('send')
const resultE = document.getElementById('result')

sendE.addEventListener('click', (event)=>{
    resultE.innerHTML=`${firstNameE.value} ${surNameE.value}<br> ${emailE.value.toLowerCase()} <br>Usługa: ${serviceE.value}`
    if(copyE.checked){
        resultE.innerHTML=`<br>Kopia zapasowa została wysłana
        ${firstNameE.value} ${surNameE.value}<br> ${emailE.value.toLowerCase()} <br>Usługa: ${serviceE.value}`
    }
})

