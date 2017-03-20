$(function(){
    W = $(window).width();
    H = $(window).height();
    $('.cube').css({'transform':'translateZ(-'+H/2+'px)'});
    $('.cube,.cube div').css({width :W,height:H});
    $('.cube_top').css({top:-H/2});
    $('.cube_bottom').css({bottom:-H/2});
    $('.cube_front').css({'transform':'translateZ('+H/2+'px)'});
    $('.cube_back').css({'transform':'translateZ(-'+H/2+'px) rotateX(180deg)'});
});

