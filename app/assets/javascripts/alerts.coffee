ready = ->
  window.setTimeout (->
    $('.alert').fadeTo(500, 0).slideUp 500, ->
      $(this).remove()
      return
    return
  ), 5000

$(document).ready ready
$(document).on 'turbolinks:load', ready
