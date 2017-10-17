var jq = jQuery;

(function($){
var swImgs = function(a){
	var eId = document.getElementById(a);
		if(eId != null){
			var elem = eId.getElementsByTagName('a');
			var num = elem.length;
			eId.imgFile=[],eId.swFile=[],imgExt = /(\.\w{3,4}$)/;
			for(var i=0; i< num; i++){
				if(elem[i].className!=="none"){
				eId.imgFile[i] = elem[i].children[0].src;
				eId.swFile[i] = new Image();
				eId.swFile[i].src = eId.imgFile[i].replace(imgExt,'_2$1');
				elem[i].su = i;
				elem[i].onmouseover=function(){
					this.children[0].src = eId.swFile[this.su].src;
					}
				elem[i].onmouseout=function(){
					this.children[0].src = eId.imgFile[this.su];
					}
				}
			}
		}
}

		jQuery(document).click(function(){ 


			if(jQuery("#side_bar").css("left")=="0px"){
				jQuery("#side_bar").animate({"left":"-600px"},200, "swing", function () {
					$("#warp_bg").css({"display":"none"});
				}
				); //	

			}else{


			}
		});
    
    
    jQuery("#mypage_btn, #side_on").click(function(){ 

			var dateExpires  = new Date();
			var strCookie;
			var isSSMStatus;

			if(jQuery("#side_bar").css("left")=="-600px"){
				jQuery("#side_bar").animate({"left":"0px"},200, "swing", function () {
					$("#warp_bg").css({"display":"block"}); //OPEN : 
				}
				); //	
	            isSSMStatus = "fold";

			}else{
				jQuery("#side_bar").animate({"left":"-600px"}, 200, "swing", function () {
					$("#warp_bg").css({"display":"none"});
				}
				); //CLOSE
				isSSMStatus = "unfold";

			}
			dateExpires.setDate(dateExpires.getDate() + 30);
			strCookie  = "cookie_ssm_status=" + escape(isSSMStatus);
			strCookie += "; path=/; domain=ecudemo27552.cafe24.com"; 
			strCookie += "; expires=" + dateExpires.toGMTString();
			document.cookie = strCookie;
		});

var swImgs1 = new swImgs('gnb2');
var swImgs1 = new swImgs('logo2');
	var quick_status= getCookie("cookie_ssm_status");

	if (quick_status=="fold" ) {
        $("#side_bar").css({"left":"0px"}); //OPEN : 
	} else if (quick_status=="unfold"  ){
       $("#side_bar").css({"left":"-600px"}); //CLOSE :
 
	}


})(jQuery);


function getCookie( name )
{
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length )
	{
	var y = (x+nameOfCookie.length);
	if ( document.cookie.substring( x, y ) == nameOfCookie ) {
	if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
	endOfCookie = document.cookie.length;
	return unescape( document.cookie.substring( y, endOfCookie ) );
	}
	x = document.cookie.indexOf( " ", x ) + 1;
	if ( x == 0 )
	break;
	}
	return "";
}




/*
(function($) {
$(".box").hide();

$(".box").hover(function(){
$(this).find(".box").fadeIn('fast');

},function(){
$(this).find(".box").hide();
});
})(jQuery);






(function($) {
$(".mypage_banner .text_wrap").hide();

$(".mypage_banner li").hover(function(){
$(this).find(".text_wrap").fadeIn('fast');

},function(){
$(this).find(".text_wrap").hide();
});
})(jQuery);

*/



















