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
