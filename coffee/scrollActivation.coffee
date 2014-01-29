(($) ->
    $window = $(window)

    showPagination = ->
        if window.detectmob()
            $pagination = $('.onepage-pagination')
            $pagination.fadeIn('fast')

    hidePagination = ->
        if window.detectmob()
            $pagination = $('.onepage-pagination')
            $pagination.fadeOut('fast')

    $(".container.main").onepage_scroll({
        sectionContainer: "section",
        easing: "ease",

        animationTime: 1000,
        pagination: true,
        updateURL: false,
        beforeMove: (index)->
            showPagination()
        ,
        afterMove: (index)->
            hidePagination()
        ,
        loop: false,
        keyboard: true,
        responsiveFallback: false

    });
    if window.detectmob()
        $pagination = $('.onepage-pagination')
        $pagination.hide()
)(jQuery);