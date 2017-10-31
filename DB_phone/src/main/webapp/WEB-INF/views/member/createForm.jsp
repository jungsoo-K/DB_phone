<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<%@ page contentType="text/html; charset=UTF-8"%>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta name=“viewport” content=“width=device-width,initial-scale=1.0”>
	<meta name="format-detection" content="telephone=no" />

	<!--PG크로스브라우징필수내용 끝-->
	<!-- [if It IE9] -->
	<script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<!-- [end if] -->
	<!--[if lt IE 9]><script src="/bower_components/html5shiv/dist/html5shiv.js"></script><![endif]-->

	<title>기본 레이아웃</title> <!--@css(/layout/mosen/css/common.css)-->
	<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
	<link href='${pageContext.request.contextPath}/layout/mosen/css/common.css'
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
														<link
															href='${pageContext.request.contextPath}/layout/mosen/css/ec-base-desc.css'
															rel='stylesheet' type='text/css'>
															<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
															<link
																href='${pageContext.request.contextPath}/css/module/member/join.css'
																rel='stylesheet' type='text/css'>




																<script type="text/javascript" src="/ec-js/common.js"></script>
																<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->

																<script type="text/javascript"
																	src="/mosen/bxslide/jquery.bxslider.min.js"></script>

																<!--@js(/layout/mosen/js/basic.js)-->
																<script
																	src="${pageContext.request.contextPath}/layout/mosen/js/basic.js"></script>
																<!--@js(/js/common.js)-->
																<script
																	src="${pageContext.request.contextPath}/js/common.js"></script>
																<!--@js(/js/mosen/mosen_common.js)-->
																<script
																	src="${pageContext.request.contextPath}/js/mosen/mosen_common.js"></script>
																<!--@js(/js/module/layout/quick_view.js)-->
																<script
																	src="${pageContext.request.contextPath}/js/module/layout/quick_view.js"></script>

<script type="text/javascript">
function inputCheck(f){
	
	if(f.id.value==""){
		alert("아이디을 입력하세요")
		f.id.focus();
		return false;
	}
	if(f.passwd.value==""){
		alert("비밀번호를 입력하세요")
		f.passwd.focus();
		return false;
	}
	if(f.repasswd.value==""){
		alert("비밀번호를 똑같이 입력하세요")
		f.repasswd.focus();
		return false;
	}

	if(f.email.value==""){
		alert("이메일을 입력하세요")
		f.email.focus();
		return false;
	}

}
function idCheck(id){
	
	if(id==""){
		alert("아이디를 입력하세요");
		document.frm.id.focus();
	}else{
		var url ="id_proc";
		url +="?id="+id;
		
		wr = window.open(url,"아이디검색","width=400,height=300");
		wr.moveTo((window.screen.width-400)/2,(window.screen.height-400)/2);
	}
}
	function emailCheck(email){
		if(email==""){
			alert("이메일 입력하세요");
			document.frm.email.focus();
		}else{
			var url ="email_proc";
			url +="?email="+email;
			
			wr = window.open(url,"이메일검색","width=400,height=300");
			wr.moveTo((window.screen.width-400)/2,(window.screen.height-400)/2);
		}
		
	}


</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
																<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
</head>
<body style="width: 60%; margin-left: 25%">



	<div class="path">

		<ol>
			<li><a href="/">홈</a></li>
			<li title="현재 위치"><strong>회원 가입</strong></li>
		</ol>
	</div>

	<div class="titleArea">
		<h2>회원 가입</h2>
	</div>

	<div module="member_join">
		<FORM name='frm' action='./createProc' method='post'
			onsubmit="return inputCheck(this)">


			<h3 class="{$display_base_column_title|display}">기본정보</h3>
			<p class="required {$display_base_column_title|display}">
				<img
					src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
					alt="필수" /> 필수입력사항
			</p>
			<div class="ec-base-table typeWrite">
				<table border="1" summary="">
					<caption>회원 기본정보</caption>
					<colgroup>
						<col style="width: 150px;" />
						<col style="width: auto;" />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">아이디 <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="필수" /></th>
							<td><input type="text" name="id" min="4" maxlength="16">
									(영문소문자/숫자, 4~16자) 
							<button type="button" class="btn_style01 btn_black"
									onclick="idCheck(document.frm.id.value)"
									style="line-height: 0px;">ID 중복확인</button></td>
						</tr>
						<tr>
							<th scope="row">비밀번호 <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="필수" /></th>
							<td><input type="password" name="passwd"></td>
						</tr>
						<tr>
							<th scope="row">비밀번호 확인 <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="필수" /></th>
							<td><input type="password" name="repasswd"></td>
						</tr>

						<tr>
							<th scope="row" id="{$name_title}">이름 <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="필수" /></th>
							<td><input type="text" name="mname"></td>
						</tr>
						<tr class="{$display_addr|display}">
							<th scope="row">주소 <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								class="{$display_required_address|display}" alt="필수" /></th>
							<td><a href="#none" onclick="sample6_execDaumPostcode()"
								id="{$btn_find_post}"><button type="button" name="zipcode"
										class="btn_style01 btn_black" style="line-height: 0px;">우편번호</button>
									<input type="text" name="zipcode" id="sample6_postcode"
									size="7" placeholder="우편번호"></a><br /> <input type="text"
								name="address1" size="50" placeholder="주소" id="sample6_address">
									<input type="text" name="address2" size="50" placeholder="상세주소"
									id="sample6_address2"><br /></td>
						</tr>

						<tr class="{$display_mobile|display}">
							<th scope="row">휴대전화 <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								class="{$display_required_cell|display}" alt="필수" /></th>
							<td><input type="text" name="phone"></td>
						</tr>
						<tr>
							<th scope="row">이메일 <img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="필수" /></th>
							<td><input type="text" name="email">
									<button type="button" class="btn_style01 btn_black"
										onclick="emailCheck(document.frm.email.value)"
										style="line-height: 0px;">이메일 중복확인</button> <span
									id="{$emailMsg_id}"></span></td>
						</tr>

					</tbody>
				</table>
			</div>




			<div class="ec-base-box typeThinBg agreeArea">
				<h3>[필수] 이용약관 동의</h3>

				<div class="path">
					<span>현재 위치</span>
					<ol>
						<li><a href="/">홈</a></li>
						<li title="현재 위치"><strong>이용약관</strong></li>
					</ol>
				</div>



				<div module="mall_term" class="ec-base-box typeThinBg ">

					<textarea cols="170" rows="10">
본 약관(이하 ‘본 약관’이라 함)은 주식회사(이하 ‘당사’라 함)가 제공하는 네이버 라인에 관한 모든 제품 및 서비스(이하 ‘본 서비스’라 함)의 이용에 관한 조건에 대해 본 서비스를 이용하는 고객(이하 ‘고객’이라 함)과 당사간에 정하는 것입니다.

1. 정의

본 약관에서는 다음 용어를 사용합니다.
1.1. ‘콘텐츠’란 문장, 음성, 음악, 이미지, 동영상, 소프트웨어, 프로그램, 코드 기타 정보를 말합니다.
1.2. ‘본 콘텐츠’란 본 서비스를 통해 접속할 수 있는 콘텐츠를 말합니다.
1.3. ‘투고 콘텐츠’란 고객이 본 서비스에 투고, 송신, 업로드한 콘텐츠를 말합니다.
1.4. ‘코인’이란 본 서비스가 유상으로 제공하는 서비스 또는 콘텐츠와 교환 가능한 전자적 가상통화를 말합니다.
1.5. ‘개별 이용약관’이란 본 서비스에 관하여 본 약관과는 별도로 ‘약관’, 가이드라인’, ‘정책’ 등의 명칭으로 당사가 배포 또는 게시한 문서를 말합니다.

2. 약관 동의

2.1 고객은 본 약관의 규정에 따라 본 서비스를 이용해야 합니다. 고객은 본 약관에 대해 유효하고 취소 불가능한 동의를 했을 경우에 한하여 본 서비스를 이용할 수 있습니다.
2.2. 고객이 미성년자일 경우에는 친권자 등 법정대리인의 동의를 얻은 후 본 서비스를 이용하십시오. 또한 고객이 본 서비스를 사업자를 위해 이용할 경우에는 당해 사업자 역시 본 약관에 동의한 후, 본 서비스를 이용하십시오.
2.3. 고객은 본 서비스를 실제로 이용함으로써 본 약관에 대해 유효하고 취소 불가능한 동의를 한 것으로 간주됩니다.
2.4. 본 서비스에 개별 이용약관이 존재할 경우, 고객은 본 약관 외에 개별 이용약관의 규정에 따라 본 서비스를 이용해야 합니다.

3. 약관 변경

필요하다고 당사에서 판단할 경우, 당사는 고객에 대한 사전 통지 없이 언제라도 본 약관 및 개별 이용약관을 변경할 수 있습니다. 변경 후의 본 약관 및 개별 이용약관은 당사가 운영하는 웹사이트 내의 적절한 장소에 게시된 시점부터 그 효력이 발생하며, 본 약관 및 개별 이용약관이 변경된 후에도 고객이 본 서비스를 계속 이용함으로써 변경 후의 본 약관 및 적용된 개별 이용약관에 대해 유효하고 취소 불가능한 동의를 한 것으로 간주됩니다. 이러한 변경 내용은 고객에게 개별적으로 통지할 수 없기 때문에, 본 서비스를 이용할 때에는 수시로 최신의 본 약관 및 적용된 개별 이용약관을 참조하시기 바랍니다.

4. 계정

4.1. 고객은 본 서비스 이용을 위해 고객 자신과 관련된 정보를 등록할 경우, 진실하고 정확하며 완전한 정보를 제공해야 하며 언제나 최신 정보가 적용되도록 수정해야 합니다.
4.2. 고객은 본 서비스 이용을 위해 패스워드를 등록할 경우, 이를 부정하게 이용당하지 않도록 본인 책임 하에 엄중하게 관리해야 합니다. 당사는 등록된 패스워드를 이용하여 이루어진 일체의 행위를 고객 본인의 행위로 간주할 수 있습니다.
4.3. 본 서비스에 등록한 고객은 언제라도 계정을 삭제하고 탈퇴할 수 있습니다.
4.4. 당사는 고객이 본 약관을 위반하거나 또는 위반할 우려가 있다고 인정된 경우, 고객에 대한 사전 통지 없이 계정을 정지 또는 삭제할 수 있습니다.
4.5. 당사는 마지막 접속 시점부터 １년 이상 경과한 계정을 고객에 대한 사전 통지 없이 삭제할 수 있습니다.
4.6. 고객이 본 서비스에서 가지는 모든 이용 권한은 이유를 막론하고 계정이 삭제된 시점에 소멸됩니다. 고객의 실수로 계정을 삭제한 경우에도 계정을 복구할 수 없으므로 주의하시기 바랍니다.
4.7. 본 서비스의 계정은 고객에게 일신전속적으로 귀속됩니다. 고객이 본 서비스에서 가지는 모든 이용권은 제삼자에게 양도, 대여 또는 상속할 수 없습니다.

5. 프라이버시

5.1. 당사는 고객의 프라이버시를 존중합니다.
5.2. 당사는 고객의 프라이버시 정보와 개인정보를 LINE 개인정보 취급방침에 따라 적절하게 취급합니다.
5.3.당사는 고객으로부터 수집한 정보를 안전하게 관리하기 위해 보안에 최대한 주의를 기울이고 있습니다.

6. 서비스 제공

6.1. 고객은 본 서비스를 이용하는 데 있어 필요한 PC나 휴대전화 단말기, 통신 기기, 운영 체제, 통신 수단 및 전력 등을 고객의 비용과 책임 하에 준비해야 합니다.
6.2. 당사는 본 서비스의 전부 또는 일부를 연령, 본인 확인 여부, 등록정보 유무, 기타 당사에서 필요하다고 판단한 조건을 만족시키는 고객에 한하여 제공할 수 있습니다.
6.3. 당사는 필요하다고 판단될 경우, 고객에 대한 사전 통지 없이 언제라도 본 서비스의 전부 또는 일부 내용을 변경할 수 있으며 또한 그 제공을 중지할 수 있습니다.

7. 긴급 신고 기능 미적용

본 서비스는 경찰기관, 해상보안기관, 소방기관 기타 기관에 대한 긴급 신고 수단을 제공하지 않습니다

8. 광고 게재

당사는 본 서비스에 당사 또는 제삼자의 광고를 게재할 수 있습니다.

9. 제휴 파트너 서비스

본 서비스는 당사와 제휴한 다른 사업자가 제공하는 서비스 또는 콘텐츠가 포함되는 경우가 있습니다. 이러한 서비스 또는 콘텐츠에 대한 책임은 이를 제공하는 사업자에게 있습니다. 또한, 이러한 서비스 또는 콘텐츠에는 이를 제공하는 사업자가 정한 이용약관 기타 조건이 적용되는 경우가 있습니다.

10.콘텐츠

10.1.당사는 당사가 제공하는 본 콘텐츠에 대해 양도 및 재허락이 불가능하고 비독점적이며 본 서비스의 이용을 유일한 목적으로 하는 이용권을 고객에게 부여합니다.
10.2. 고객은 이용료, 이용 기간 등의 이용 조건이 별도로 규정된 본 콘텐츠를 이용할 경우, 이와 같은 이용 조건에 따라야 합니다. 본 서비스의 화면에 ‘구입’, ‘판매’ 등이 표기되어 있을 경우에도 당사가 고객에게 제공하는 본 콘텐츠에 관한 지적재산권 기타 권리는 고객에게 이전되지 않으며, 고객에게는 상기 이용권만이 부여됩니다.
10.3. 고객은 본 콘텐츠를 본 서비스에서 미리 정한 이용 형태를 넘어서 이용(복제, 송신, 전재, 수정 등의 행위를 포함)해서는 안 됩니다.
10.4. 투고 콘텐츠의 백업은 고객이 직접 실시해야 합니다. 당사는 투고 콘텐츠의 백업을 실시할 의무를 갖지 않습니다.
10.5. 본 서비스는 여러 고객이 투고, 수정, 삭제 등을 할 수 있는 편집 기능을 포함하는 경우가 있습니다. 이때 고객은 본인의 투고 콘텐츠에 대한 다른 고객의 편집을 허락하는 것으로 합니다.
10.6. 고객은 투고 콘텐츠에 대해 보유하는 권리를 기존과 다름없이 보유하며, 당사가 이 권리를 취득하지는 않습니다. 단, 투고 콘텐츠 중 친구관계가 아닌 다른 고객에게 일반적으로 공개되는 것에 한하여 고객은 이를 서비스와 프로모션에 이용할 수 있는 권리(당사가 필요하고 적절하다고 판단한 범위 내에서 생략 등의 변경을 가할 수 있는 권리를 포함하며, 이러한 이용 권한을 당사와 제휴하는 제삼자에게 재허락할 수 있는 권리를 포함함)를 당사에 대해 무상으로 기한과 지역의 제한 없이 허락하는 것으로 간주합니다.
10.7. 당사는 법령 또는 본 약관의 준수 상황 등을 확인할 필요가 있을 경우, 투고 콘텐츠의 내용을 확인할 수 있습니다. 단, 당사가 그러한 확인 작업을 실시할 의무를 가지는 것은 아닙니다.
10.8. 당사는 고객이 투고 콘텐츠에 관하여 법령 혹은 본 약관을 위반하거나 또는 위반할 우려가 있다고 인정한 경우, 기타 업무상 필요한 경우, 고객에게 사전 통지 없이 투고 콘텐츠를 삭제하는 등의 방법을 통하여 본 서비스에서 투고 콘텐츠를 이용하는 것을 제한할 수 있습니다.

11. 코인

11.1.코인은 본 서비스에서 구입하거나 혹은 캠페인, 기타 당사가 지정한 방법을 통해 고객에게 부여됩니다. 코인의 구입 단위, 결제 방법, 기타 코인의 부여 조건은 당사가 정하여 본 서비스에 게재합니다.
11.2. 코인은 당사가 지정한 서비스 또는 콘텐츠 이외의 현금, 재물 기타 경제적 이익과 교환할 수 없습니다. 서비스 또는 콘텐츠 교환에 필요한 코인 수, 기타 코인의 이용 조건은 당사가 정하여 본 서비스에 게재합니다.
11.3. 코인은 이를 취득한 계정에서만 이용 가능합니다. 또한 운영 체제가 다른 단말기에서 제공되는 코인은 동일한 명칭이더라도 종류가 다르므로 계속해서 쓰거나 합산할 수 없습니다.
11.4. 코인은 관련 법령이 정하는 바에 따라 환불될 수 있습니다.

12. 금지 사항

고객은 본 서비스 이용 중 다음에 기재된 행위를 해서는 안 됩니다.
12.1. 법령, 법원의 판결, 결정 혹은 명령 또는 법령상 구속력을 가지는 행정 조치에 위반되는 행위.
12.2. 공공질서 또는 미풍양속을 저해할 우려가 있는 행위.
12.3. 당사 또는 제삼자의 저작권, 상표권, 특허권 등의 지적재산권, 명예권, 프라이버시권, 기타 법령상 또는 계약상의 권리를 침해하는 행위.
12.4. 과도하게 폭력적인 표현, 노골적인 성적 표현, 인종, 국적, 신조, 성별, 사회적 신분과 가문 등에 관하여 차별하는 표현, 자살, 자상 행위, 약물 남용을 유인 또는 조장하는 표현, 기타 반사회적인 내용을 포함하고 타인에게 불쾌감을 주는 표현을 투고 또는 송신하는 행위.
12.5. 당사 또는 제삼자를 사칭하는 행위 또는 의도적으로 허위 정보를 유포하는 행위.
12.6. 동일하거나 유사한 메시지를 불특정 다수의 고객에게 송신하는 행위(당사가 인정한 것은 제외함), 다른 고객을 무차별적으로 친구 또는 그룹 대화에 추가하는 행위, 기타 당사가 스팸으로 판단한 행위.
12.7. 당사가 정한 방법 외의 방법으로 본 콘텐츠의 이용권을 현금, 재물 기타 경제적 이익과 교환하는 행위.
12.8. 영업, 선전, 광고, 권유, 기타 영리를 목적으로 하는 행위(당사가 인정한 것은 제외함), 성적 행위와 외설적인 행위를 목적으로 하는 행위, 면식이 없는 이성과의 만남과 교제를 목적으로 하는 행위, 다른 고객에 대한 악의적인 행위나 비방 및 중상모략 등을 목적으로 하는 행위, 기타 본 서비스가 미리 정한 이용 목적과 다른 목적으로 본 서비스를 이용하는 행위.
12.9. 반사회적인 세력에 대한 이익 공여와 기타 협력 행위.
12.10. 종교 활동 또는 종교 단체로 권유하는 행위.
12.11. 타인의 개인정보, 등록 정보, 이용 이력 정보 등을 불법으로 수집, 공개 또는 제공하는 행위.
12.12. 본 서비스의 서버와 네트워크 시스템에 지장을 주는 행위, BOT, 치팅 툴, 기타 기술적인 수단을 이용하여 서비스를 불법으로 조작하는 행위, 본 서비스의 장애를 의도적으로 이용하는 행위, 동일한 질문을 필요 이상으로 반복하는 등 당사에 대해 부당한 문의 또는 요구를 하는 행위, 기타 당사의 본 서비스 운영 또는 다른 고객의 본 서비스 이용을 방해하거나 이에 지장을 주는 행위.
12.13. 상기12.1.부터 12.12까지의 어느 하나에 해당되는 행위를 원조 또는 조장하는 행위.
12.14. 기타 부적당하다고 당사가 판단한 행위.

13. 고객의 책임

13.1. 고객은 고객 자신의 책임 하에 본 서비스를 이용해야 하며, 본 서비스에서 이루어진 모든 행위 및 그 결과에 대해서 일체의 책임을 져야 합니다.
13.2. 당사는 고객이 본 약관에 위반되는 형태로 본 서비스를 이용하고 있다고 인정한 경우, 당사에서 필요하고 적절하다고 판단한 조치를 취하겠습니다. 단, 당사는 이러한 위반 행위를 방지 또는 시정할 의무를 갖지 않습니다.
13.3. 본 서비스 이용에 기인하여(당사가 이러한 이용으로 인해 클레임을 제삼자로부터 받은 경우를 포함함)당사가 직접적 혹은 간접적으로 어떤 손해(변호사 비용 부담을 포함함)를 입었을 경우, 고객은 당사의 요구에 따라 즉시 이를 보상해야 합니다.

14. 당사 면책

14.1. 당사는 본 서비스(본 콘텐츠를 포함함)에 사실상 또는 법률상의 하자(안전성, 신뢰성, 정확성, 완전성, 유효성, 특정 목적과 부합 여부, 보안 등에 관련된 결함, 오류와 버그, 권리 침해 등을 포함함)가 없음을 명시적으로도 암묵적으로도 보증하지 않습니다. 당사는 고객에 대해 이러한 하자를 제거하고 본 서비스를 제공할 의무를 갖지 않습니다.
14.2. 당사는 본 서비스로 인하여 고객에게 발생한 모든 손해에 대해 일체의 책임을 지지 않습니다. 단, 본 서비스에 관한 당사와 고객 간의 계약(본 약관을 포함함)이 소비자계약법에서 규정하는 소비자 계약에 해당될 경우, 이 면책 규정은 적용되지 않습니다.
14.3. 상기 14.2.의 단서 조항에서 규정하는 경우라도 당사의 과실(중과실을 제외함)에 의한 채무 불이행 또는 불법 행위로 인해 고객에게 발생한 손해 중 특별한 사정으로 발생한 손해(당사 또는 고객이 손해 발생을 예견했거나 또는, 예견할 수 있었던 경우를 포함함)에 대해 당사는 일체의 책임을 지지 않습니다. 또한, 당사의 과실(중과실을 제외함)에 의한 채무 불이행 또는 불법 행위로 인해 고객에게 발생한 손해를 배상할 때는 고객으로부터 당해 손해가 발생한 달에 수령한 이용료 금액을 상한 금액으로 합니다.

15. 연락 방법

15.1. 본 서비스와 관련해 당사가 고객에게 연락을 할 때는 당사가 운영하는 웹사이트 내의 적당한 장소에 게시하거나 기타 당사가 적당하다고 판단하는 방법으로 합니다.
15.2. 본 서비스와 관련해 고객이 당사에 연락을 할 때는 당사가 운영하는 웹사이트 내의 적당한 장소에 설치된 고객문의 페이지에서 송신하거나 당사가 지정하는 방법으로 합니다.

16. 준거법과 재판 관할

본 약관은 일본어를 정본으로 하며, 일본법을 준거법으로 합니다. 본 서비스에 기인 또는 관련하여 고객과 당사 간에 발생한 분쟁에 대해서는 도쿄지방법원 또는 도쿄간이법원을 제1심 전속적 합의 관할 법원으로 합니다.
</textarea>

				</div>

				<div class="content"></div>
				<p class="check">
					<span>이용약관에 동의하십니까?</span><label> <input type="checkbox"
						name="agree" value="1"> </input>
					</label>
				</p>
			</div>

			<div class="ec-base-box typeThinBg agreeArea">
				<h3>[필수] 개인정보 수집 및 이용 동의</h3>
				<div module="mall_term" class="ec-base-box typeThinBg ">
					<textarea cols="170" rows="10">
       개인정보수집 및 이용동의 약관
“안전결제 프리미엄 서비스(이하, ‘서비스’라 합니다.)”의 서비스 제공과 관련하여 “브이피 주식회사(이하, ‘회사’라 합니다.)”가 본인으로부터 취득한 개인정보는 통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 정보통신서비스제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정에 따라 제3자에 제공하거나 영업목적으로 이용 시 동의를 받아야 하는 정보입니다. 이에 본인은, 귀사가 본인으로부터 취득한 개인정보를 아래와 같은 목적으로 이용하거나 제휴업체에게 제공하는데 동의합니다. 회사는 본 서비스를 가입자에게 제공하기 위해 다음과 같이 개인정보를 수집/이용합니다.
1. 개인정보수집 및 이용
① 수집항목
- 휴대폰정보, 단말기 모델명, 서비스 가입/해지일자, 서비스 가입 및 실행이력, 카드번호, 카드 유효기간
② 이용목적
- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산, 본인확인, 점유인증, 요금 결제
- 회원관리 : 회원제 서비스 이용에 따른 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 가입 및 가입횟수 제한, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달
- 마케팅 및 광고에 활용 : 신규 서비스(제품) 개발 및 특화, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계, 이벤트 등 광고성 정보를 push메시지 등을 통해 전달
2. 개인정보 취급 위탁
회사는 이용자의 동의 없이 이용자의 개인정보 취급을 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 이용자에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.
3. 개인정보 보유 및 이용기간
본 서비스 가입 일로부터 해지 후 정산 완료 시까지 단, 상법, 국세기본법 등에서 소비자보호에 관한 법률 등 관계 법령에 따라 보존할 필요가 있는 경우 회사는 관계법령에서 정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 다음과 같습니다.
- 거래에 관한 장부 및 증빙서류 : 5년(국세기본법, 법인세법, 부가가치세법 등)
- 대금결제 및 재화 등의 공급에 관한 기록 : 5년(전자상거래등에서의 소비자보호에 관한 법률)
- 표시/광고에 관한 기록 : 6개월(전자상거래에서의 소비자보호에 관한 법률)
- 계약 또는 청약철회 등에 관한 기록 : 5년(전자상거래에서의 소비자보호에 관한 법률)
- 소비자 불만 또는 분쟁처리에 관한 기록 : 3년(전자상거래에서의 소비자보호에 관한 법률) 
(그 외, 법령에 정해진 개인정보 보유기간이 있을 경우 그에 따름)
4. 개인정보 수집 및 이용 동의 철회
서비스 해지시 개인정보 수집 이용동의가 철회됩니다.
5. 수집한 개인정보의 파기 절차
회사는 서비스 가입자가 가입시 제공한 개인정보의 이용 목적이 달성된 후에는 보관 기간 및 이용기간에 따라 해당 정보를 파기하되 , 그 파기 절차 및 방법 등은 다음과 같습니다.
- 파기절차 : 가입자가 서비스 가입 등을 위해 회사에 제공한 개인정보는 서비스 해지 등 이용목적이 달성된 후 내부 방침 및 기타 관련 법령에 이한 정보보호 방침에 의한 정보보호 사유가 따른 보유기간이 경과한 후에 삭제하거나 파기합니다. 회사가 가입자의 서비스 가입 당시 수집하여 전자적 파일 형태로 관리하는 개인정보는 서비스 자발적 해지 시점에 삭제됩니다.
- 파기기한 : 가입자의 개인정보 보유기간이 경과된 경우에 삭제합니다. 단, 고객 응대 및 불법적 사용자에 대한 관련 수사기관 협조, 상법 등 관련 법령의 규정에 의하여 거래 관련 권리 의무 관계의 확인 등을 이유로 보유하여야 할 필요가 있을 경우에는 일정 기간 동안 가입자의 데이터를 보유합니다. 또한 고객에게 미리 고지하고 개별 동의를 받은 경우에는 동의한 내용에 따른 기간 동안 보유합니다.
- 파기 방법 : 개인정보의 파기는, 가입신청서 등 서면 양식에 기재하거나, 종이에 출력된 개인정보는 분쇄기로 분쇄 또는 소각하거나 화학약품 처리를 하여 용해하여 파기하고, 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
6. 개인정보관리 책임자 및 담당 연락처
- 이름/소속/직위 : 이덕수/IT서비스실/실장
- 전화/메일 : 1577-3033/isp114@vp.co.kr
- 부 칙 -
제 1 조 (시행일) 
본 약관은 2007년 12월 27일부터 시행합니다.

제 2 조 (적용) 
본 약관은 2012년 8월 10일부터 적용하고, 2007년 12월 27일부터 적용되던 종전의 약관은 본 약관으로 대체합니다.

제 3 조 (적용) 
본 약관은 2012년 12월 18일부터 적용하고, 2012년 8월 10일부터 적용되던 종전의 약관은 본 약관으로 대체합니다.

제 4 조 (적용) 
본 약관은 2014년 3월 13일부터 적용하고, 2012년 12월 18일부터 적용되던 종전의 약관은 본 약관으로 대체합니다.
    </textarea>
				</div>
				<div class="content"></div>
				<p class="check">
					<span>개인정보 수집 및 이용에 동의하십니까?</span> <label> <input
						type="checkbox" name="agree" value="1"> </input>
					</label>
				</p>
			</div>



			<div
				class="ec-base-box typeThinBg agreeArea {$display_marketing|display}">
				<h3>[선택] 쇼핑정보 수신 동의</h3>
				<div module="mall_term" class="ec-base-box typeThinBg ">
					<div class="agree">
						<p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로
							받아보실 수 있습니다.</p>
						<p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>
						<p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를
							변경하실 수 있습니다.</p>
						<ul class="check">
					</div>
					<ul class="check">
						<li class="{$display_is_sms|display}"><span>SMS 수신을
								동의하십니까?</span> <label> <input type="checkbox" name="agree"
								value="1"> </input>
						</label></li>
						<li class="{$display_is_news_mail|display}"><span>이메일
								수신을 동의하십니까?</span> <label> <input type="checkbox" name="agree"
								value="1"> </input>
						</label></li>
					</ul>
				</div>


			</div>

			<div class="ec-base-button">
				<input type='submit' class="btn_style01 btn_black"
					style="line-height: 0px;" value='회원가입'> 
					<input type='reset'
					class="btn_style01 btn_black" style="line-height: 0px;" value='취소'>
			</div>
		</form>

	</div>
</body>
</html>