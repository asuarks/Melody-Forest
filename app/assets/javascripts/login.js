window.addEventListener('DOMContentLoaded', function(){

$('#signup').click(function() {
  $('.greenbox').css('transform', 'translateX(80%)');
  $('.signin').addClass('nodisplay');
  $('.signup').removeClass('nodisplay');
});

$('#signin').click(function() {
  $('.greenbox').css('transform', 'translateX(0%)');
  $('.signup').addClass('nodisplay');
  $('.signin').removeClass('nodisplay');
});

});