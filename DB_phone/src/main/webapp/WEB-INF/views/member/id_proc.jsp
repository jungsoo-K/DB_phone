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
.content{
  margin: 0 auto;            
  border-color: #AAAAAA;    
  border-width: 1px;       
  border-style: solid;       
  border-collapse: collapse; 
 
}
.bottom{
  margin: 0 auto;            
  border-color: #AAAAAA;    
  border-width: 1px;       
  border-style: solid;       
  border-collapse: collapse; 
}
 
 

</style> 
<script type="text/javascript">
function use(){
	opener.frm.id.value='${param.id}'
	window.close();
	
}


</script>

</head> 
<!-- *********************************************** -->
<body>

<!-- *********************************************** -->
 
<DIV class="title">ID 중복확인</DIV>
<div class="content">
입력된 ID:${param.id}<br><br>
<c:choose>
<c:when test="${flag}">${param.id} 중복되서 사용을 못합니다.<br><br></c:when>
<c:otherwise>사용가능한 ID입니다<br><br><button type='button' onclick='use()'>사용</button></c:otherwise>
</c:choose>


</div>

  
  <DIV class='bottom'>
    <input type='button' value='다시시도' onclick="location.href='./id_proc'">
    <input type='button' value='닫기' onclick="window.close()">
  </DIV>

   </DIV>
 
<!-- *********************************************** -->

</body>
<!-- *********************************************** -->
</html> 
