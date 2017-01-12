
$(document).ready(
    function(){
       $.each($('.nav').find('li'), function() {
        $(this).toggleClass('active', 
            window.location.pathname.indexOf($(this).find('a').attr('href')) > -1);
    }); 
        $("html").niceScroll(
            {
                cursorcolor:"rgba(30,30,30,.5)",
                zindex:999,
                scrollspeed:100,
                mousescrollstep:50,
                cursorborder:"0px solid #fff"
            }
        );  
    }
);
