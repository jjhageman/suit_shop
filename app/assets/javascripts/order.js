$(document).ready(function(){
  $('.bxslider').bxSlider({
    infiniteLoop: false,
    hideControlOnEnd: true,
    nextSelector: '#slider-next',
    prevSelector: '#slider-prev',
    nextText: 'NEXT',
    prevText: 'PREVIOUS',
    onSlideAfter: function($slideElement, oldIndex, newIndex){
      if(newIndex == 3){
        $("#slider-next").hide();
        $("#slider-checkout").show();
      } else if (newIndex == 2 && oldIndex == 3) {
        $("#slider-checkout").hide();
        $("#slider-next").show();
      }
    }
  });

  $('.customization-options li').click(function() {
    $(this).siblings().removeClass('selected');
    $(this).addClass('selected');
  });
});
