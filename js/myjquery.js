// inicio MENU DESPLEGABLE 

$('#menu-toggle').click(function(){
    $(this).toggleClass('open');
  });
  
  
  
  $('#menu-toggle').click(function(){
      $('nav , .redes').toggleClass('abierto');
  });
  
   
  // fin MENU DESPLEGABLE


  // Read more button

  function myFunction() {
    var dots = document.getElementById("dots");
    var moreText = document.getElementById("more");
    var btnText = document.getElementById("myBtn");
  
    if (dots.style.display === "none") {
      dots.style.display = "inline";
      btnText.innerHTML = "Read more"; 
      moreText.style.display = "none";
    } else {
      dots.style.display = "none";
      btnText.innerHTML = "Read less"; 
      moreText.style.display = "inline";
    }
  }


  // Initialize and add the map
function initMap() {
  // The location of Uluru
  const trailhead = { lat: 35.674880, lng: -105.961820 };
  // The map, centered at Uluru
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 4,
    center: trailhead,
  });
  // The marker, positioned at Uluru
  const marker = new google.maps.Marker({
    position: trailhead,
    map: map,
  });
}

  






function toggleAbout(id) {
  var x = document.getElementById(id);
  var icon = document.getElementById('icon-arrow-' + id);
  if (x.style.display === "none") {
      x.style.display = "block";
      icon.style.transform = "rotate(0.5turn)";
  } else {
      x.style.display = "none";
      icon.style.transform = "rotate(0turn)";
  }
}







// TESTIMONIAL

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dots");
  // var slideIndex = document.getElementById("");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
    // setTimeout(showDivs, 1000);  NO logro hacer que sea automatico
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace("dot-active", "");
  }
  x[slideIndex-1].style.display = "block";  
  
  dots[slideIndex-1].className += " dot-active";
  
}


// AOS ?
AOS.init();

// $('[data-aos]').parent().addClass('hideOverflowOnMobile');


//stellar
// jQuer(document).ready(function(){
//   $.stellar();
// });


$(window).stellar({
  horizontalScrolling: false,
  verticalOffset: 0,
  horizontalOffset: 0,
  responsive: true,
});