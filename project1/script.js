let main = document.querySelector("#main");
let cursor = document.querySelector("#cursor");
let image = document.querySelector("#image");
main.addEventListener("mousemove",(e)=>{
    gsap.to(cursor,{
      x:e.x,
      y:e.y,
      duration:1,
      ease: "sine.out",
    })
});

image.addEventListener("mouseenter",()=>{
    cursor.innerHTML = "enter"
   gsap.to(cursor,{
    scale:2,
   })
})

image.addEventListener("mouseleave",()=>{
    cursor.innerHTML = " "
    gsap.to(cursor,{
        scale:1,
    })
})
