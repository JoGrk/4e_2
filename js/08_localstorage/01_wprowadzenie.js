const textareaE = document.querySelector('textarea')
const formE = document.querySelector('form')

//jeśli jest element storage to ustawiam wartość dla textarea
if(localStorage.getItem('text')!==null){
    textareaE.value = localStorage.getItem('text')
}

//podczas wpisywania do textarea aktualizujemy  localstorage
textareaE.addEventListener('input',(e)=>{
    localStorage.setItem('text', textareaE.value)
    
})

//Wysylamy formularz czyszczenie localStorage

formE.addEventListener('submit',(e)=>{
     localStorage.removeItem("text")
})