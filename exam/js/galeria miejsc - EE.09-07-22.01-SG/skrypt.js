const mainImgE = document.querySelector('main img')
const leftImgTable = document.querySelectorAll('#left img')
const serduszkoE = document.querySelector('#right img')
let serduszkoOn = false 
for(let leftImgE of leftImgTable){
    leftImgE.addEventListener('click',(event)=>{
        mainImgE.src=leftImgE.src
    })
}

    serduszkoE.addEventListener('click',(event)=>{
        serduszkoOn = !serduszkoOn
        if(serduszkoOn){ 
            serduszkoE.src= 'icon-on.png'
        }
        else{
            serduszkoE.src = 'icon-off.png'
        }
    })