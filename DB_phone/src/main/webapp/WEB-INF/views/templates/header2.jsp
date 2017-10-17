<%@ page contentType="text/html; charset=UTF-8"%>

	<!-- 전체메뉴 배경-->
	<div class="tuxedo_bg"></div>

	<!--상단 좌측 메뉴-->
	<div id="left">
		<ul id="left_menu" class="nav accordion">

			<!--메인로고메뉴-->
			<li class="logo">
				<a href="/home.jsp"><img src="${pageContext.request.contextPath}/images/logo.png"  alt="" /></a>
			</li>

			<!--로그인메뉴-->
			<li class="login_menu" module="Layout_statelogoff">
				<a href="${pageContext.request.contextPath}/member/login">login</a> / <a href="${pageContext.request.contextPath}/member/create">join us</a>
			</li>
			<li class="login_menu" module="Layout_stateLogon">
				<a href="${pageContext.request.contextPath}/member/lgout">logout</a> / <a href="/member/modify.html">my info</a>
			</li>
			<li class="login_menu">
				<a href="/myshop/index.html">my page</a> / 
				<a href="/order/basket.html" module="Layout_orderBasketcount">
					basket<span>({$basket_count})</span>
				</a>
			</li>
			<li class="login_menu">
				<a href="http://service.epost.go.kr/iservice/trace/Trace.jsp" target="_blank">delivery</a> / 
				<a href="/link/bookmark.html" class="first" target="_blank"	onclick="winPop(this.href); return false;">
					bookmark
				</a>
			</li>

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
				<ul class="category" module="Layout_category">
					<li><a href="/product/list2.html{$param}" class="h1">{$name_or_img_tag}</a></li>
					<li><a href="/product/list.html{$param}" class="h1">{$name_or_img_tag}</a></li>
					<li><a href="/product/list.html{$param}" class="h1">{$name_or_img_tag}</a></li>
				</ul>
			</li>

			<!--커뮤니티메뉴-->
			<li><a href="#">COMMUNITY</a>
				<ul class="category" module="Layout_BoardInfo">
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
			<li style="margin-top: 20px;"><a href="#" class="cs_center"><i
					class="fa fa-angle-right" aria-hidden="true"></i> cs center</a>
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
			<li><a href="#" class="cs_center"><i
					class="fa fa-angle-right" aria-hidden="true"></i> bank info</a>
				<ul class="bank_box">
					<li>
						<span>농협</span> 100067-56-137144<br/>
						<span>국민</span> 087901-04-183507<br/>
						<span>신한</span> 109820-04-112321<br/>
						<span class="name">
						<b>예금주 : 더블유(W)</b>
						</span>
					</li>
				</ul>
			</li>

			<!--글로벌메뉴 (멀티쇼핑몰적용시 자동 온/오프됨)-->
			<li module="Layout_multishopListitem" class="openx">
				<a href="#" class="cs_center"><i class="fa fa-angle-right"
					aria-hidden="true"></i> by language
				</a>
				<ul class="global_btn">
					<li class="{$selected_class}">
						<a href="http://{$shop_domain}/">
							<img src="http://img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" class="ease" />
							<span class="name">{$locale_language}</span>
						</a>
					</li>
					<li class="{$selected_class}">
						<a href="http://{$shop_domain}/">
							<img src="http://img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" class="ease" />
							<span class="name">{$locale_language}</span>
						</a>
					</li>
				</ul>
			</li>
		</ul>


		<script type="text/javascript">
			// Initialize navgoco with default options
			$(".nav").navgoco({
				caretHtml : '',
				accordion : true,
				openClass : 'open',
				save : true,
				cookie : {
					name : 'navgoco',
					expires : false,
					path : '/'
				},
				slide : {
					duration : 350,
					easing : 'easeOutBack'
				}

			});
		</script>
	</div>

	<div id="right">
		<div id="r_search">
			<a href="#none"><i class="fa fa-search" aria-hidden="true"></i></a>
		</div>
		<div id="side_on">
			<a href="#none" class="tuxedo-menu-trigger"><i class="fa fa-bars"
				aria-hidden="true"></i></a>
		</div>
	</div>

	<!--sns 링크배너-->
	<div id="snslink">
		<!-- 
		sns 링크를 설정 할수 있습니다. 사용자의 계정링크를 입력 하여 연결 해주세요
		
		아래의 소스 한줄이 각 sns별 아이콘 하나 입니다. 해당 소스 한줄을 잘라내어  밑으로 붙여주세요^^
		<a href="#none" target="_blank"><img src="/web/season2_skin/skin1/images/snslink_03.png" alt="트위터"><span class="toggle_img ease"><img src="/web/season2_skin/skin1/images/snslink_2_03.png"></span></a>
		<a href="#none" target="_blank"><img src="/web/season2_skin/skin1/images/snslink_05.png" alt="핀터레스트"><span class="toggle_img ease"><img src="/web/season2_skin/skin1/images/snslink_2_05.png"></span></a>
		<a href="#none" target="_blank"><img src="/web/season2_skin/skin1/images/snslink_06.png" alt="카카오스토리"><span class="toggle_img ease"><img src="/web/season2_skin/skin1/images/snslink_2_06.png"></span></a>
		<a href="#none" target="_blank"><img src="/web/season2_skin/skin1/images/snslink_07.png" alt="유투브"><span class="toggle_img ease"><img src="/web/season2_skin/skin1/images/snslink_2_07.png"></span></a>
		<a href="#none" target="_blank"><img src="/web/season2_skin/skin1/images/snslink_08.png" alt="네이버카페"><span class="toggle_img ease"><img src="/web/season2_skin/skin1/images/snslink_2_08.png"></span></a>
		<a href="#none" target="_blank"><img src="/web/season2_skin/skin1/images/snslink_09.png" alt="카카오톡"><span class="toggle_img ease"><img src="/web/season2_skin/skin1/images/snslink_2_09.png"></span></a>
		-->
		
		<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/images/skin/snslink_01.png" alt="페이스북">
			<span class="toggle_img ease"> <img src="${pageContext.request.contextPath}/images/skin/snslink_2_01.png"></span>
		</a>
		<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/images/skin/snslink_02.png" alt="블로그">
			<span class="toggle_img ease"><img src="${pageContext.request.contextPath}/images/skin/snslink_2_02.png"></span>
		</a>
		<a href="#none" target="_blank"><img src="${pageContext.request.contextPath}/images/skin/snslink_04.png" alt="인스타그램">
			<span class="toggle_img ease"><img src="${pageContext.request.contextPath}/images/skin/snslink_2_04.png"></span>
		</a>
	</div>

	<!--오른쪽 상단 검색창-->
	<div class="search_header" module="Layout_SearchHeader">
		
		<!--
			    $product_page=/product/detail.html
			    $category_page=/product/list.html
   		-->
		<fieldset>
			{$form.keyword}<a href="#none" onclick="{$action_search_submit}"><i
				class="fa fa-search" aria-hidden="true"></i></a>
		</fieldset>
		<span class="close_btn">
			<a href="#none"><i class="fa fa-times" aria-hidden="true"></i></a>
		</span>
	</div>

	<%@ page contentType="text/html; charset=UTF-8" %>
	
	<!-- 
	우측전체메뉴(햄버거메뉴클릭시) 소스 부분입니다.
	-->
	
	<nav id="sidebar" class="tuxedo-menu">
	    <div class="side_menu">
	        <ul>
	            <h2>COMPANY</h2>
	            <li><a href="/company/about.html">ABOUT W</a></li>
				<li><a href="/company/brandstory.html">BRAND STORY</a></li>
				<li><a href="/company/location.html">LOCATION</a></li>
				<li><a href="/company/contact.html">CONTACT US</a></li>
	        </ul>
	        <ul module="Layout_category">
	            <h2>STORE</h2>
	            <li><a href="/product/list2.html{$param}" class="h1">{$name_or_img_tag}</a></li>
				<li><a href="/product/list.html{$param}" class="h1">{$name_or_img_tag}</a></li>
				<li><a href="/product/list.html{$param}" class="h1">{$name_or_img_tag}</a></li>
	        </ul>
	        <ul module="Layout_BoardInfo">
	            <h2>COMMUNITY</h2>
	            <li><a href="{$board_list_url}">{$board_name}</a> {$board_adult_icon}</li>
				<li><a href="{$board_list_url}">{$board_name}</a> {$board_adult_icon}</li>    
				<li module="Layout_calendarBanner"><a href="{$calendar_view_page}">schedule</a></li>
	        </ul>
	        <ul>
	            <h2>PORTFOLIO</h2>
	            <li><a href="/product/list_portfolio.html?cate_no=45">INTERIOR</a></li>
				<li><a href="/product/list_portfolio2.html?cate_no=46">DESIGN</a></li>
				<li><a href="/product/list_portfolio2.html?cate_no=47">PHOTO LIVE</a></li>
				<li><a href="/product/list_portfolio.html?cate_no=48">FASHION</a></li>
	        </ul>
	        <ul>
	            <h2>MEMBERS</h2>
	            <li module="Layout_statelogoff"><a href="${pageContext.request.contextPath}/member/loginForm.jsp" class="first">login</a></li>     
	            <li module="Layout_statelogoff"><a href="${pageContext.request.contextPath}/member/createForm.jsp">join us</a></li>     
	            <li module="Layout_stateLogon"><a href="${pageContext.request.contextPath}/member/logout.jsp" class="first">logout</a></li>
	            <li module="Layout_stateLogon"><a href="/member/modify.html">my info</a></li>
	            <li><a href="/order/basket.html" module="Layout_orderBasketcount">basket <span>{$basket_count}</span></a></li>
	            <li><a href="<!--@import(/layout/mosen/layout_delivery_url.html)-->" target="_blank">delivery</a></li>
	            <li><a href="/link/bookmark.html" class="first" target="_blank" onclick="winPop(this.href); return false;">bookmark</a></li>  
	        </ul>
	        <ul module="myshop_main"> 
	            <h2>MY PAGE</h2>
	            <li class=""><a href="/myshop/order/list.html">order list</a></li>
	            <li module="Layout_stateLogon"><a href="/member/modify.html">my info</a></li>
	            <li><a href="/myshop/mileage/historyList.html">mileage <strong>{$avail_mileage}</strong></a></li>    
	            <li><a href="/myshop/coupon/coupon.html">my coupon <strong>{$coupon_cnt}</strong></a></li>
	            <li class=""><a href="/myshop/deposits/historyList.html">my deposits</a></li>
	            <li class=""><a href="/board/consult/list.html">1:1 board</a></li>
	            <li class=""><a href="/myshop/board_list.html">my board</a></li>
	            <li class=""><a href="/myshop/addr/list.html">my address</a></li>
	            <li><a href="/myshop/wish_list.html" class="wishList">wish list <strong>{$wish_count}</strong></a></li>
	            <li><a href="/product/recent_view_product.html" class="recentList">today view <strong>{$recent_count}</strong></a></li>
	        </ul>
	    </div>
	    <div class="close_btn2"><a href="#none"><img src="${pageContext.request.contextPath}/images/skin/btn_close2.png"></a></div> 
	</nav>

	<script>
	    (function ($) {
	        var isFixed = true;
	        $('#sidebar').tuxedoMenu({isFixed: isFixed});
	
	    })(jQuery);
	</script>

</body>
</html>