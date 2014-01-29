(($) ->
    $window = $(window);
    getWindowHeight = ($window) ->
        windowHeight = $window.height()
    setScrollBullets = (windowHeight)->
        $bullets = $('.onepage-pagination')
        bulletsHeight = $bullets.height()
        topPos = windowHeight/2 - bulletsHeight/2
        $bullets.css("top", topPos)
    $(document).ready(->
        setScrollBullets(getWindowHeight($window))
    )
    $window.resize(->
        setScrollBullets(getWindowHeight($window))
    )
)(jQuery);