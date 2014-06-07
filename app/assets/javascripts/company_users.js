// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  $('.company').on('click', function(event) {
    event.preventDefault();
    console.log($(this).html());
    $('#company_id').val(this.id);
    $('#insert_comp_name').text($(this).html());
  });
});
