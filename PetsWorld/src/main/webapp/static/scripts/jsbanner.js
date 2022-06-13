const  newslide = document.querySelector('.pre-slide');
const  slideimg = document.querySelectorAll('.pre-slide img')


//button

const prevtbn = document.querySelector('#prevbtn');
const nextbtn = document.querySelector('#nextbtn');

//counter

let counter =  0;
const size = slideimg[0].clientWidth;

newslide.style.transform = 'translateX('+ (-size * counter) +'px)';

//loop
function slideclick() {
    setInterval(function(){
        $('#nextbtn').click ();
        }, 10000); //cambia immagine ogni 10 secondi
}


//button listeners

nextbtn.addEventListener('click',()=>{
    if(counter >= slideimg.length -1) {
        newslide.style.transition = "transform 0.4s  ease-in-out";
        counter=-1;
        newslide.style.transform = 'translateX('+ (-size * counter) +'px)';
    }
    newslide.style.transition = "transform 0.4s  ease-in-out";
    counter++;
    newslide.style.transform = 'translateX('+ (-size * counter) +'px)';
});

prevtbn.addEventListener('click',()=>{
    if(counter <= 0)
    {
        newslide.style.transition = "transform 0.4s  ease-in-out";
        counter=slideimg.length;
        newslide.style.transform = 'translateX('+ (-size * counter) +'px)';
    }
    newslide.style.transition = "transform 0.4s  ease-in-out";
    counter --;
    newslide.style.transform = 'translateX('+ (-size * counter) +'px)';
});

