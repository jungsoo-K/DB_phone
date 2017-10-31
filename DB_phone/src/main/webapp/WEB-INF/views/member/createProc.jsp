<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<%@ page contentType="text/html; charset=UTF-8"%>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!--PG크로스브라우징필수내용 시작-->
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    

    <!--PG크로스브라우징필수내용 끝-->
    <!-- [if It IE9] --><script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><!-- [end if] -->
    <!--[if lt IE 9]><script src="/bower_components/html5shiv/dist/html5shiv.js"></script><![endif]-->

	<title>기본 레이아웃</title> <!--@css(/layout/mosen/css/common.css)-->
	<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
	<link  href='${pageContext.request.contextPath}/layout/mosen/css/common.css'
		rel='stylesheet' type='text/css'>
		<!--@css(/layout/mosen/css/mosen_layout.css)-->
		<link
			href='${pageContext.request.contextPath}/layout/mosen/css/mosen_layout.css'
			rel='stylesheet' type='text/css'>
			<!--@css(/layout/mosen/css/btn_all.css)-->
			<link
				href='${pageContext.request.contextPath}/layout/mosen/css/btn_all.css'
				rel='stylesheet' type='text/css'>
				<!--@css(/layout/mosen/css/ec-base-ui.css)-->
				<link
					href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-ui.css'
					rel='stylesheet' type='text/css'>
					<!--@css(/layout/mosen/css/ec-base-tooltip.css)-->
					<link
						href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-tooltip.css'
						rel='stylesheet' type='text/css'>
						<!--@css(/layout/mosen/css/ec-base-help.css)-->
						<link
							href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-help.css'
							rel='stylesheet' type='text/css'>
							<!--@css(/layout/mosen/css/ec-base-product.css)-->
							<link
								href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-product.css'
								rel='stylesheet' type='text/css'>
								<!--@css(/layout/mosen/css/ec-base-paginate.css)-->
								<link
									href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-paginate.css'
									rel='stylesheet' type='text/css'>
									<!--@css(/layout/mosen/css/ec-base-tab.css)-->
									<link
										href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-tab.css'
										rel='stylesheet' type='text/css'>
										<!--@css(/layout/mosen/css/ec-base-button.css)-->
										<link
											href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-button.css'
											rel='stylesheet' type='text/css'>
											<!--@css(/layout/mosen/css/ec-base-layer.css)-->
											<link
												href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-layer.css'
												rel='stylesheet' type='text/css'>
												<!--@css(/layout/mosen/css/ec-base-box.css)-->
												<link
													href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-box.css'
													rel='stylesheet' type='text/css'>
													<!--@css(/layout/mosen/css/ec-base-table.css)-->
													<link
														href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-table.css'
														rel='stylesheet' type='text/css'>
														<!--@css(/layout/mosen/css/ec-base-desc.css)-->
														<link href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-desc.css'
															rel='stylesheet' type='text/css'>
															
															
															<link href='${pageContext.request.contextPath}/css/module/member/joincomplete.css'
															rel='stylesheet' type='text/css'>

    <link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.3.0/animate.min.css">
    
    <script type="text/javascript" src="/ec-js/common.js"></script><!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <script type="text/javascript" src="/mosen/bxslide/jquery.bxslider.min.js"></script>

   <script src="${pageContext.request.contextPath}/layout/mosen/js/basic.js"></script>
																<!--@js(/js/common.js)-->
																<script src="${pageContext.request.contextPath}/js/common.js"></script>
																<!--@js(/js/mosen/mosen_common.js)-->
																<script src="${pageContext.request.contextPath}/js/mosen/mosen_common.js"></script>
																<!--@js(/js/module/layout/quick_view.js)-->
																<script src="${pageContext.request.contextPath}/js/module/layout/quick_view.js"></script>
    
    
    </head>
    <body style="width: 60%; margin-left: 25%">

        <div class="path">
    <span>현재 위치</span>
    <ol>
        <li><a href="/">홈</a></li>
        <li title="현재 위치"><strong>회원 가입 완료</strong></li>
    </ol>
</div>

<div class="titleArea">
    <h2>회원 가입 완료</h2>
</div>

<div module="member_joinComplete">
    <!--@css(/css/module/member/joincomplete.css)-->
    	
    <div class="joinComplete">
        <h3><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/h3_join_complete.gif" alt="회원가입" /></h3>
        <p class="desc">회원가입이 완료 되었습니다.</p>
        <div class="ec-base-box typeMember gMessage">
            <strong class="message">저희 쇼핑몰을 이용해 주셔서 감사합니다.</strong>
            <div class="information">
                <p class="thumbnail"><img src="{$group_image}" alt="{$group_name}" onerror="this.src='//img.echosting.cafe24.com/skin/base/member/img_member_default.gif';" /></p>
                <div class="description">
                <dl class="ec-base-desc typeBullet gSmall gBlank5">
							<dt>아이디</dt>
							<dd>${param.id }</dd>
							<dt>이름</dt>
							<dd>${param.mname}</dd>
							<dt>이메일</dt>
							<dd>${param.email}</dd>
							<dt>휴대전화</dt>
							<dd>${param.phone}</dd>
							<dt>주소</dt>
							<dd>${param.address1}</dd>
							<dt>상세주소</dt>
							<dd>${param.address2}</dd>
						</dl>

                </div>
            </div>
        </div>
       
      
      <DIV class="ec-base-button">
				<input type='button' value='로그인'
					onclick="location.href='./loginForm.jsp'"
					class="btn_style01 btn_black" style="line-height: 0px;">
					 <input
					type='button' value='메인으로 이동' class="btn_style01 btn_white"
					style="line-height: 0px;" onclick="location.href='${pageContext.request.contextPath}/'">
			</DIV>
    </div>
</div>


        

</body>
</html>