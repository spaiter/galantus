(($) ->
    actionsForMobileDevices = ->
        if window.detectmob()
            $pagination = $('.onepage-pagination')
            $pagination.hide()

            $frameLeft = $('.frameLeft').hide()
            $frameRight = $('.frameRight').hide()

            $sections = $('section')
            sectionsReset = {
                'margin-left': '0',
                'width': '100%'
            }
            $sections.css(sectionsReset)

            if $('.aboutUsBlock').length
                $aboutUsBlock = $('.aboutUsBlock')
                $aboutUsBlock.width('100%')

    $(document).ready(->
        actionsForMobileDevices()
    )

    $(window).resize(->
        actionsForMobileDevices()
    )

)(jQuery);