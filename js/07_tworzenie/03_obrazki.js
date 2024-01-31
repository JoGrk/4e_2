const imageList = [
    'https://d-art.ppstatic.pl/kadry/k/r/1/3c/44/600ffe77c0adf_o_large.jpg',
    'https://teleskop.pl/data/include/cms/BLOG-TELESKOP/Astronomiczna-zima/sloneczna_zima.webp',
    'https://upload.wikimedia.org/wikipedia/commons/9/98/Samotnia_noca_01.jpg',
    'https://cdn.galleries.smcloud.net/t/galleries/gf-sRtd-wizZ-hyzd_ogrod-zima-664x442.webp',
    
    'https://i.iplsc.com/-/000DV22L6I42WFDO-C322-F4.webp',
    'https://bi.im-g.pl/im/b9/26/19/z26371769IH,Zima-2020.jpg'
]

const btnE = document.querySelector('#top button')
const imagesE=document.querySelector('#images')
const btnF=document.getElementById('first')
const btnL=document.getElementById('last')
const btnW=document.querySelector('#bottom button')
const inputE=document.getElementById('field')

btnE.addEventListener('click',(e)=>{
    for(let i in imageList){
        let divE= document.createElement('div')
        let h2E = document.createElement('h2')
        h2E.innerHTML = parseInt(i)+1
        divE.appendChild(h2E)
        let imgE = document.createElement('img')
        imgE.src=imageList[i]
        divE.appendChild(imgE)
        imagesE.appendChild(divE)


    }
})

btnF.addEventListener('click',(e)=>{
    imagesE.removeChild(imagesE.firstChild)
})

btnL.addEventListener('click',(e)=>{
    imagesE.removeChild(imagesE.lastChild)
})
btnW.addEventListener('click',(e)=>{
    let divE = document.createElement('div')
    let h2E = document.createElement('h2')
    h2E.innerHTML='nowy'
    let imgE = document.createElement('img')
    imgE.src=inputE.value 
    divE.appendChild(h2E)
    divE.appendChild(imgE)
    imagesE.appendChild(divE)``
})

imagesE.addEventListener('click', (event)=>{
    console.dir(event.target) //  img
    // usuwamy kliknięty div
    imagesE.removeChild(event.target.parentNode)
})