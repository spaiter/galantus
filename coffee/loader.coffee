(($) ->
  $frame = $('.frame')
  $frameTop = $frame.children('.frameTop')
  $frameBottom = $frame.children('.frameBottom')
  $frameLeft = $frame.children('.frameLeft')
  $frameRight = $frame.children('.frameRight')
  createLoader = ->
    $frameTop.append('<div class="loader"></div>')
    $frameBottom.append('<div class="loader"></div>')
    $frameLeft.append('<div class="loader"></div>')
    $frameRight.append('<div class="loader"></div>')
  showLoading = ->
    $frameTopLoader = $frameTop.children('.loader')
    $frameTopLoader.addClass('loading');
    $frameBottomLoader = $frameBottom.children('.loader')
    $frameBottomLoader.addClass('loading');
    $frameLeftLoader = $frameLeft.children('.loader')
    $frameLeftLoader.addClass('loading');
    $frameRightLoader = $frameRight.children('.loader')
    $frameRightLoader.addClass('loading');
    setTimeout(->
      hideLoader($frameTopLoader,$frameBottomLoader,$frameLeftLoader,$frameRightLoader)
    ,6000
    )
    setTimeout(->
      destroyLoader($frameTopLoader,$frameBottomLoader,$frameLeftLoader,$frameRightLoader)
    ,7000
    )
  showCreditsAndCopyRights = ->
    $copyRights = $('.copyrights')
    $credits = $('.credits')
    $copyRights.fadeIn('slow')
    $credits.fadeIn('slow')
  hideLoader = (toploader,bottomloader,leftloader,rightloader)->
    toploader.fadeOut('slow')
    bottomloader.fadeOut('slow')
    leftloader.fadeOut('slow')
    rightloader.fadeOut('slow')
    showCreditsAndCopyRights()
  destroyLoader = (toploader,bottomloader,leftloader,rightloader)->
    toploader.remove()
    bottomloader.remove()
    leftloader.remove()
    rightloader.remove()
  $(document).ready(()->
    createLoader()
  )
  $(window).load(()->
    showLoading()
  )
)(jQuery);