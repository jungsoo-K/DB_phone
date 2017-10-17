;(function(b){b.fn.DB_springMove=function(e){var a={dir:"y",mirror:1,radius:20,motionSpeed:.05,intervalTimer:30};b.extend(a,e);return this.each(function(){var c=b(this),d=0;c.css({position:"absolute"});timerId=setInterval(function(){radius=Math.sin(d)*a.radius;d+=a.motionSpeed;"x"==a.dir?c.css({"margin-left":radius*a.mirror}):c.css({"margin-top":radius*a.mirror})},a.intervalTimer)})}})(jQuery);


$('.mosen_join').DB_springMove({
    dir:'y',               //방향축('x','y')
    mirror:1,              //반대방향이동(1,-1)
    radius:4,             //반경
    motionSpeed:0.18       //속도(0~1)
})