$(document).ready(function(){
  $('.bxslider').bxSlider({
    infiniteLoop: false,
    hideControlOnEnd: true,
    nextSelector: '#slider-next',
    prevSelector: '#slider-prev',
    nextText: 'NEXT',
    prevText: 'PREVIOUS'
  });

  $('.customization-options li').click(function() {
    $(this).siblings().removeClass('selected');
    $(this).addClass('selected');
  });
});
