<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=yes">
    <meta name="format-detection" content="telephone=no" />
	<title><tiles:getAsString name="title"/></title>
	
	<link href='${pageContext.request.contextPath}/css/layout.css' rel='stylesheet' type='text/css'>
	
	<link href='${pageContext.request.contextPath}/css/module/layout/searchHeader.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/tuxedo-menu.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/common.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/mosen_layout.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/btn_all.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-ui.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-tooltip.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-help.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-product.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-paginate.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-tab.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-button.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-box.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-table.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-desc.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/ec-base-tooltip.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/style01.css' rel='stylesheet' type='text/css'>
	<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
	<link href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.3.0/animate.min.css">
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/common.js"></script><!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
	<script src="${pageContext.request.contextPath}/js/jquery.bxslider.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/basic.js"></script>
	<script src="${pageContext.request.contextPath}/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/js/mosen/mosen_common.js"></script>
	<script src="${pageContext.request.contextPath}/js/module/layout/quick_view.js"></script>
	<script src="${pageContext.request.contextPath}/js/mosen/tuxedo-menu.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.navgoco.js"></script>
	<script src="${pageContext.request.contextPath}/js/mosen_category.js"></script>
</head>
<body leftmargin="0" topmargin="0">

    <header id="sidemenu">
        <tiles:insertAttribute name="header" />
    </header>
         
    <section id="site-content">
        <tiles:insertAttribute name="body" />
    </section>
</body>
</html>