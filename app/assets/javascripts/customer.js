$(document).ready(function(){
  $('.customer-hover').mousedown(function() {
    if ($('.customer-attributes').is(':visible')) {
      $('.customer-attributes').hide();
    } else {
      $('.customer-attributes').show();
    }
  });
});
