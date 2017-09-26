<%@ page contentType="text/html; charset=UTF-8" %> 

<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.navgoco.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/mosen_category.js"></script>

<ul id="left_menu" class="nav accordion">
    
    <!--메인로고메뉴-->
    <li class="logo">
    	<a href="/home"><img src="${pageContext.request.contextPath}/images/logo.png"  alt="" /></a>
    </li>   
    
    <!--로그인메뉴-->
    <li class="login_menu" module="Layout_statelogoff"><a href="/member/login.html">login</a> / <a href="/member/join.html">join us</a></li>     
    <li class="login_menu" module="Layout_stateLogon"><a href="{$action_logout}">logout</a> / <a href="/member/modify.html">my info</a></li>
    <li class="login_menu"><a href="/myshop/index.html">my page</a> / <a href="/order/basket.html" module="Layout_orderBasketcount">basket <span>({$basket_count})</span></a></li> 
    <li class="login_menu"><a href="http://service.epost.go.kr/iservice/trace/Trace.jsp" target="_blank">delivery</a> / <a href="/link/bookmark.html" class="first" target="_blank" onclick="winPop(this.href); return false;">bookmark</a></li> 

    <!--어바웃메뉴-->
    <li><a href="#">ABOUT US</a>
        <ul class="category">
            <li><a href="/company/about.html">ABOUT W</a></li>
			<li><a href="/company/brandstory.html">BRAND STORY</a></li>
			<li><a href="/company/location.html">LOCATION</a></li>
			<li><a href="/company/contact.html">CONTACT US</a></li>
        </ul>
    </li>		
    
    <!--스토어메뉴-->
    <li><a href="#">STORE</a>
        <ul class="category"  module="Layout_category">
			<li><a href="/product/list2.html{$param}" class="h1">{$name_or_img_tag}</a></li>
			<li><a href="/product/list.html{$param}" class="h1">{$name_or_img_tag}</a></li>
			<li><a href="/product/list.html{$param}" class="h1">{$name_or_img_tag}</a></li>
        </ul>    
    </li>
                
    <!--커뮤니티메뉴-->
    <li><a href="#">COMMUNITY</a>
        <ul class="category"  module="Layout_BoardInfo">
            <li><a href="{$board_list_url}">{$board_name}</a> {$board_adult_icon}</li>
			<li><a href="{$board_list_url}">{$board_name}</a> {$board_adult_icon}</li>    
			<li module="Layout_calendarBanner"><a href="{$calendar_view_page}">schedule</a></li>
        </ul>    
    </li>
           
    <!--룩북메뉴-->
    <li><a href="/product/list_lookbook.html?cate_no=43">LOOKBOOK</a></li>
    
    <!--포트폴리오메뉴-->
    <li><a href="#">PORTFOLIO</a>
        <ul class="category">
            <li><a href="/product/list_portfolio.html?cate_no=45">INTERIOR</a></li>
			<li><a href="/product/list_portfolio2.html?cate_no=46">DESIGN</a></li>
			<li><a href="/product/list_portfolio2.html?cate_no=47">PHOTO LIVE</a></li>
			<li><a href="/product/list_portfolio.html?cate_no=48">FASHION</a></li>
        </ul>    
    </li>
        
    <!--콜센터 메뉴-->
    <li style="margin-top:20px;"><a href="#" class="cs_center"><i class="fa fa-angle-right" aria-hidden="true"></i>  cs center</a>
        <ul class="cs_box">
            <li>
				010  - 4555 - 5884<br/>
				<span>
					WEEKLY 11:00 - 18:00<br/>
					LUNCH 12:00 - 13:00<br/>
					SAT . SUN . HOLIDAY OFF
				</span>
            </li>
        </ul>    
    </li>

    <!--은행정보 메뉴-->
    <li><a href="#" class="cs_center"><i class="fa fa-angle-right" aria-hidden="true"></i>  bank info</a>
        <ul class="bank_box">
            <li>
				<span>농협</span> 100067-56-137144<br/>
				<span>국민</span> 087901-04-183507<br/>
				<span>신한</span> 109820-04-112321<br/>
				<span class="name"><b>예금주 : 더블유(W)</b></span>
			</li>
        </ul>
    </li>    
    
    <!--글로벌메뉴 (멀티쇼핑몰적용시 자동 온/오프됨)-->
    <li module="Layout_multishopListitem" class="openx"><a href="#" class="cs_center"><i class="fa fa-angle-right" aria-hidden="true"></i> by language</a>
        <ul class="global_btn">
            <li class="{$selected_class}"><a href="http://{$shop_domain}/"><img src="http://img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" class="ease"  /><span class="name">{$locale_language}</span></a></li>
            <li class="{$selected_class}"><a href="http://{$shop_domain}/"><img src="http://img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" class="ease"  /><span class="name">{$locale_language}</span></a></li>
        </ul>
    </li>

</ul>
        
        
        

<script type="text/javascript">

	// Initialize navgoco with default options
	$(".nav").navgoco({
		caretHtml: '',
		accordion: true,
		openClass: 'open',
        save: true,
		cookie: {
			name: 'navgoco',
			expires: false,
			path: '/'
		},
		slide: {
			duration: 350,
			easing: 'easeOutBack'
		}

	});

</script>