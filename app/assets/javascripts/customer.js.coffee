$('#toggle-company').on 'change', ->
  if $('#toggle-company').is(':checked')
    $('.company').show()
  else
    $('.company').hide()
