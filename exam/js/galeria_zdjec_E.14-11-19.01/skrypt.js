const tabImgTopE = document.querySelectorAll('#top-right img')
const imgBottomE = document.querySelector('#bottom-right img')


for (let imgTopE of tabImgTopE){
    imgTopE.addEventListener('click', (e)=>{
        let file = imgTopE.src
        if(file.lastIndexOf("-szary.")>0){
            file=file.replace("-szary.",".") 
        }
        imgBottomE.src=file

    })
}

for(let imgTopE of tabImgTopE){
    imgTopE.addEventListener('mouseover',(e)=>{
        let file = imgTopE.src
        let pozycja =file.lastIndexOf("/")
        file=file.slice(pozycja+1)
    
        imgTopE.src=file.replace(".","-szary.")       
    })   
}

for(let imgTopE of tabImgTopE){
    imgTopE.addEventListener('mouseout',(even)=>{
        let file = imgTopE.src
        imgTopE.src=file.replace("-szary.",".")   
    })
}