// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$('div.alert-box.alert').on('click', function(){
  $(this).slideUp();
});

$('div.alert-box').on('click', function(){
  $(this).slideUp();
});