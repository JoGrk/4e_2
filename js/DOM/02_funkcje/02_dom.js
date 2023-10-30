//* PO WCISNIECIU GUZIKA ZMIENIA KOLOR  *//

const h1 = document.querySelector('h1')
h1.addEventListener('click', (event)=>{
    h1.innerHTML='Kopiszka'
})


const guzikEl= document.getElementById('guzik')
guzikEl.addEventListener('click', (event)=> 
guzikEl.style.backgroundColor = 'blue')


const guzikEl2= document.getElementById('guzik2')
guzikEl2.addEventListener('click', (event)=> {
    body.style.backgroundColor = 'red'
})