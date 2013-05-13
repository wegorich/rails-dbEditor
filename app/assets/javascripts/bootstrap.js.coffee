
jQuery ->
#  $("a[rel=popover]").popover()
#  $(".tooltip").tooltip()
#  $("a[rel=tooltip]").tooltip()
  bootstrapInit = ()->
    $('.dropdown-toggle').dropdown()
    $('select').selectpicker()

  bootstrapInit()

  $(document).on('click', '.fancybox', (e)->
    $.fancybox.showLoading()
    $.ajax
      url: $(this).attr('href'),
      success: (data)->
        $.fancybox.hideLoading()
        $.fancybox(data, {
          wrapCSS: 'modal'
          beforeShow: =>
            $('select').selectpicker()

          overlay :
            locked : true
        })

        $('.modal .btn-close').click ->
          $.fancybox.close();

      dataType: 'html'

    e.preventDefault()
  )

  $(document).on 'page:load', ()->
    bootstrapInit()
