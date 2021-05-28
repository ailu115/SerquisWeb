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