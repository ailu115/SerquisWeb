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

  // Toggle in about

function toggleAwards () {
  var x = document.getElementById("toggle-awards");
  var icon = document.getElementById("icon-arrow");
  if (x.style.display === "none") {
    x.style.display = "block";
    icon.style.transform = "rotate(0.5turn)";
  //  $("i").toggleClass("fa-caret-up");
    
  } else {
    x.style.display = "none";
    icon.style.transform = "rotate(0turn)";
    // $("i").toggleClass("fa-caret-down");
   
  }

}

function toggleAfiliations () {
  var x = document.getElementById("toggle-afiliations");
  var icon = document.getElementById("icon-arrow-afiliations");
  if (x.style.display === "none") {
    x.style.display = "block";
    icon.style.transform = "rotate(0.5turn)";
  //  $("i").toggleClass("fa-caret-up");
    
  } else {
    x.style.display = "none";
    icon.style.transform = "rotate(0turn)";
    // $("i").toggleClass("fa-caret-down");
   
  }

}

// function toggleServices () {
//   var x = document.getElementById("toggle-services");
//   var icon = document.getElementById("icon-arrow");
//   if (x.style.display === "none") {
//     x.style.display = "block";
//     icon.style.transform = "rotate(0.5turn)";
//   //  $("i").toggleClass("fa-caret-up");
    
//   } else {
//     x.style.display = "none";
//     icon.style.transform = "rotate(0turn)";
//     // $("i").toggleClass("fa-caret-down");
   
//   }

// }

// Animado
function toggleServices () {
  var x = document.getElementById("toggle-services");
  var icon = document.getElementById("icon-arrow");
  if (x.style.height === "0px") {
    x.style.height = "auto";
    // x.style.height = "100%";
    x.style.transition = "height ";
    icon.style.transform = "rotate(0.5turn)";
  //  $("i").toggleClass("fa-caret-up");
    
  } else {
    x.style.height = "0px";
    // x.style.height = "0";
    x.style.transition = "height ";
    icon.style.transform = "rotate(0turn)";
    // $("i").toggleClass("fa-caret-down");
   
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