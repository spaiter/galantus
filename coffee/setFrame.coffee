(($) ->
  $container = $('.container').eq(0)
  $body = $('html')
  $frame = $('.frame')
  $frameTop = $frame.children('.frameTop')
  $frameBottom = $frame.children('.frameBottom')
  $frameLeft = $frame.children('.frameLeft')
  $frameRight = $frame.children('.frameRight')
  setFrame = ()->
    containerWidth = $container.width()
    bodyHeight = $body.height()
    $frameTop.css({
      height: 50,
      width: containerWidth
    })
    $frameBottom.css({
      height: 50,
      width: containerWidth
    })
    $frameLeft.css({
      height: bodyHeight,
      width: 50
    })
    $frameRight.css({
      height: bodyHeight,
      width: 50
    })
  $(document).ready(()->
    setFrame()
  )
  $(window).resize(() ->
    setFrame()
  )
)(jQuery);