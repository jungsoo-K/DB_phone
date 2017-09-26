
$(function (){

});

$(function () {
    $('#contents').delay(0).fadeIn(2400);
    $('#left').delay(200).slideDown(800);
    $('#right').delay(300).fadeIn(500);
    $('#snslink').delay(300).fadeIn(500);
});

(function($) {
$(".fade_item").hover(function(){
$(this).find(".item_fadebox,.item_fadebox_bg").fadeIn('fast');
},function(){
$(this).find(".item_fadebox,.item_fadebox_bg").fadeOut('fast');
});
})(jQuery);

$( "#r_search, .close_btn" ).click(function() {
  $( ".search_header" ).slideToggle( "fast" );
});

