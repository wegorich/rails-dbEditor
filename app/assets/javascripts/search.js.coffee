$ ->
  $('form').on 'click', '.remove-field', (event) ->
    $(this).closest('.field').remove()
    event.preventDefault()

  $('form').on 'click', '.add_field', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()