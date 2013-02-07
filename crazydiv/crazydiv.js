data = "put data here";

$(function(){
  setInterval(function(){
    $(".crazydiv").css({
      width: Math.random()*70 + 30 + '%',
      height: Math.random()*70 + 30 + '%'
    });
  }, 5000);
});