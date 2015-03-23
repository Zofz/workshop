# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$('#toggle-company').on 'change', ->
  if $('#toggle-company').is(':checked')
    $('.company').show()
  else
    $('.company').hide()


