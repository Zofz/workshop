//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require cocoon
//= require moment
//= require moment/sv
//= require bootstrap-datetimepicker
//= require pickers
//= require_tree .

$(document).on("page:load ready", function(){
    $("input.datepicker").datepicker();
});
