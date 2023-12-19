const mainImgE = document.querySelector('main img')
const leftImgTable = document.querySelectorAll('#left img')
const serduszkoE = document.querySelector('#right img')
for(let leftImgE of leftImgTable){
    leftImgE.addEventListener('click',(event)=>{
        mainImgE.src=leftImgE.src
    })
}

    serduszkoE.addEventListener('click',(event)=>{
        
    })