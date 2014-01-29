(($) ->
    $window = $(window);
    $mainPageFirstSectionBGWrapper = $('.js-mainPageFirstSectionBGWrapper')
    $mainPageFirstSectionBG = $('.js-mainPageFirstSectionBG')

    getWindowDimensions = ($window) ->
        windowWidth = $window.width()
        windowHeight = $window.height()
        windowDimensions = {
            width: windowWidth,
            height: windowHeight,
            ratio: windowWidth / windowHeight
        }

    getDimensionsAndRatio = (image)->
        width   = image.width()
        height  = image.height()
        ratio   = width / height
        imageDimensions = {
            width: width,
            height: height,
            ratio: ratio
        }

    setImageDimensions = (image, windowDimensions, imageDimensions)->
        if windowDimensions.ratio > 1.36
            newWidth = windowDimensions.width
            newHeight = newWidth/imageDimensions.ratio
            heightDiff = windowDimensions.height - newHeight
            widthDiff = 0
        else
            newHeight = windowDimensions.height
            newWidth = newHeight*imageDimensions.ratio
            heightDiff = 0
            widthDiff = windowDimensions.width - newWidth

        newDimensions = {
            width: newWidth,
            height: newHeight,
            top: heightDiff/2
            left: widthDiff/2
        }
        image.css(newDimensions)

    putAboutUsBlock = (windowDimensions) ->
        $aboutUsBlock = $('.aboutUsBlock')
        $aboutUsBlock.width(windowDimensions.width-100)

    $(document).ready(->
        setImageDimensions($mainPageFirstSectionBG, getWindowDimensions($window), getDimensionsAndRatio($mainPageFirstSectionBG))
        putAboutUsBlock(getWindowDimensions($window))
    )

    $window.resize(->
        setImageDimensions($mainPageFirstSectionBG, getWindowDimensions($window), getDimensionsAndRatio($mainPageFirstSectionBG))
        putAboutUsBlock(getWindowDimensions($window))
    )

)(jQuery);