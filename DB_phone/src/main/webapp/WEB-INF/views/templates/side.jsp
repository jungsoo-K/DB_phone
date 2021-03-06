<%@ page contentType="text/html; charset=UTF-8" %>
<!-- 
우측전체메뉴(햄버거메뉴클릭시) 소스 부분입니다.
-->
<link href='${pageContext.request.contextPath}/css/tuxedo-menu.css' rel='stylesheet' type='text/css'>
<!--@css(/mosen/sidebar_tuxedo/dist/tuxedo-menu.css)-->
<nav id="sidebar" class="tuxedo-menu">
    <div class="side_menu">
        <ul>
            <h2>COMPANY</h2>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
        </ul>
        <ul module="Layout_category">
            <h2>STORE</h2>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
        </ul>
        <ul module="Layout_BoardInfo">
            <h2>COMMUNITY</h2>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
        </ul>
        <ul>
            <h2>PORTFOLIO</h2>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
            <li>목록</li>
        </ul>
        <ul>
            <h2>MEMBERS</h2>
            <li module="Layout_statelogoff"><a href="/member/login.html" class="first">login</a></li>     
            <li module="Layout_statelogoff"><a href="/member/join.html">join us</a></li>     
            <li module="Layout_stateLogon"><a href="{$action_logout}" class="first">logout</a></li>
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
    <div class="close_btn2"><a href="#none"><img src="/web/season2_skin/skin1/images/btn_close2.png"></a></div> 
</nav>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/mosen/sidebar_tuxedo/dist/tuxedo-menu.js"></script>
<script>
    (function ($) {
        var isFixed = true;
        $('#sidebar').tuxedoMenu({isFixed: isFixed});

    })(jQuery);
</script>

