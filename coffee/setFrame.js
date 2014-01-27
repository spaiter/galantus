// Generated by CoffeeScript 1.6.3
(function() {
  (function($) {
    var $body, $container, $frame, $frameBottom, $frameLeft, $frameRight, $frameTop, setFrame;
    $container = $('.container').eq(0);
    $body = $('html');
    $frame = $('.frame');
    $frameTop = $frame.children('.frameTop');
    $frameBottom = $frame.children('.frameBottom');
    $frameLeft = $frame.children('.frameLeft');
    $frameRight = $frame.children('.frameRight');
    setFrame = function() {
      var bodyHeight, containerWidth;
      containerWidth = $container.width();
      bodyHeight = $body.height();
      $frameTop.css({
        height: 50,
        width: containerWidth
      });
      $frameBottom.css({
        height: 50,
        width: containerWidth
      });
      $frameLeft.css({
        height: bodyHeight,
        width: 50
      });
      return $frameRight.css({
        height: bodyHeight,
        width: 50
      });
    };
    $(document).ready(function() {
      return setFrame();
    });
    return $(window).resize(function() {
      return setFrame();
    });
  })(jQuery);

}).call(this);

/*
//@ sourceMappingURL=setFrame.map
*/