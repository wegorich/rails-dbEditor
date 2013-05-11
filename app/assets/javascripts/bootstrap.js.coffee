jQuery ->
#  $("a[rel=popover]").popover()
#  $(".tooltip").tooltip()
#  $("a[rel=tooltip]").tooltip()
  bootstrapInit = ()->
    $('.dropdown-toggle').dropdown()
    $('select').selectpicker()
    $('.fancybox').fancybox()

  bootstrapInit()

  $(document).on 'page:load', ()->
    bootstrapInit()
