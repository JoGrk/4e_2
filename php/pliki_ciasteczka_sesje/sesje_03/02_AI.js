const pE =document.querySelector('p');
const timeleftE=document.querySelector('#timeleft');
const result = document.querySelector('span');
let timeleft=timeleftE.innerHTML
const timer=setInterval(()=>{
    timeleft--;
    timeleftE.innerHTML=timeleft;
    if(timeleft<=0){
        clearInterval(timer);
        pE.innerHTML="czas się skończył";
    }
}, 1000);

timer();