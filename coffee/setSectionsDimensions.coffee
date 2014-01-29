(($) ->
    $window = $(window);
    getWindowDimensions = ($window) ->
        windowWidth = $window.width()
        windowHeight = $window.height()
        windowDimensions = {
            width: windowWidth-100,
            height: windowHeight-100,
            "margin-left": 50,
            "margin-top": 50
        }
    setSectionsDimensions = (windowDimensions)->
        $sections = $('section')
        $sections.css(windowDimensions)
    $(document).ready(->
        setSectionsDimensions(getWindowDimensions($window))
    )
    $window.resize(->
        setSectionsDimensions(getWindowDimensions($window))
    )
)(jQuery);