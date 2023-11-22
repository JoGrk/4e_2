const passwdE = document.getElementById('passwd')
const resultE = document.getElementById('result')
const btnE = document.getElementById('btn')

function isDigit(text){
    const reg = /[0-9]/
    return reg.test(text)
}

btnE.addEventListener('click',(e)=> {
    let passwd = passwdE.value
    if(passwd.length===0){
        resultE.style.color='red'
        resultE.innerHTML='WPISZ HASŁO!'
    }
    else if(passwd.length>=7 && isDigit(passwd)){
        resultE.style.color='green'
        resultE.innerHTML='DOBRE'
    }
    else if(passwd.length>=4 && isDigit(passwd)){
        resultE.style.color='blue'
        resultE.innerHTML='ŚREDNIE'
    }
    else{
        resultE.style.color='yellow'
        resultE.innerHTML='SŁABE'            
    }
})