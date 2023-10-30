const headerEl= document.getElementById("header")
const paragraphEl= document.getElementById("paragraph")
console.log(headerEl)
console.log(paragraphEl)
console.dir(headerEl)
console.dir(paragraphEl)
headerEl.innerHTML="można <i>było coś</i> sensownego napisać"
// headerEl.innerHTML="inna"
paragraphEl.style.color = "red"

headerEl.addEventListener('click',(event)=>{
    headerEl.style.color = "blue"
})