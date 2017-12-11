$(document).ready(function () {
    var k = 0;
    $('.m3').css("opacity", "0");
    
    paralax(".m3-background");
    var top = $(window).scrollTop();
    loadding(".m3");
    
    $(window).bind("scroll", function () {
        paralax(".m3-background");

        top = $(window).scrollTop();
        
        loadding(".m3");

    });

    function loadding(element) {
        $(element).each(function () {
            var position = $(this).offset().top - $(this).height();
            if (top >= position && k == 0) {

                $(this).animate({'opacity': '1'}, 2000);
                k = 1;
            }
        });
    }

    function paralax(element) {
        var scrollTop = $(window).scrollTop();
        $(element).css("transform", "translateY(" + (-350 + (0.2 * scrollTop)) + "px)");
    }
});