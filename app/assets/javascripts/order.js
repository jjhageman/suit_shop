$(document).ready(function(){
  $('.bxslider').bxSlider({
    infiniteLoop: false,
    hideControlOnEnd: true,
    nextSelector: '#slider-next',
    prevSelector: '#slider-prev',
    nextText: 'Onward →',
    prevText: '← Go back'
  });
});
