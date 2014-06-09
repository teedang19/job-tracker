// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {

  $('.company').on('click', function(event) {
    event.preventDefault();
    $('#company_id').val(this.id);
    var compName = $(this).attr('class').replace("comany ", "");
    $('#insert_comp_name').text("Adding a potential job for: " + compName);
  });
  
});
