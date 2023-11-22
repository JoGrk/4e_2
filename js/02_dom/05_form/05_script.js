const formE= document.querySelector('form');
const redE= document.querySelector('#red');
const greenE= document.querySelector('#green');
const blueE= document.querySelector('#blue');
const rightE=document.querySelector('#right')
formE.addEventListener('submit',(event) => {
    event.preventDefault()
    if(redE.checked){
        rightE.style.backgroundColor='rgb(226, 168, 168)'
        rightE.style.color='red'
    }
    
} )