<%@ page contentType="text/html; charset=UTF-8" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<script type="text/javascript">
function use(){
	opener.frm.email.value='${param.email}'
	window.close();
	
}


</script>

</head> 
<!-- *********************************************** -->
<body>

<!-- *********************************************** -->
 
<DIV class="title">EMAIL 중복확인</DIV>
<div class="content">
입력된 EMAIL:${param.email }<br><br>
<c:choose>
<c:when test="${flag }">중복되서 사용할 수 없습니다.<br><br></c:when>
<c:otherwise>사용 가능합니다.<br><br><button type='button' onclick='use()'>사용</button>

</c:otherwise>
</c:choose>


</div>

  
  <DIV class='bottom'>
    <input type='button' value='다시시도' onclick="location.href='email_proc.do'">
    <input type='button' value='닫기' onclick="window.close()">
  </DIV>

 
 
<!-- *********************************************** -->

</body>
<!-- *********************************************** -->
</html> 
