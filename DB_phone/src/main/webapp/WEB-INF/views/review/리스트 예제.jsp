<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/img_ssi.jsp" %>


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
div{
	text-align:center;
	margin-top:20px;
	margin-bottom:20px;
}
table{
	width:50%;
	margin:0 auto;
}
table, th, td{
	border: 1px solid black;
	border-collapse: collapse;
}
a:Link{
	color:#000000;
	text-decoration:none;
}
a:VISITED{
	color:#000000;
	text-decoration:none;
}
a:HOVER{
	color:#ff0000;
	text-decoration:none;
}
a:ACTIVE{
	color:#000000;
	text-decoration:none;
}

</style> 
<link href="${root}/css/style.css" rel="Stylesheet" type="text/css">
<script type="text/javascript">
function aread (imgno){
	var url = "./read";
	url += "?imgno="+imgno;
	url += "&nowPage=${nowPage}";
	location.href=url;
}

function aupdate (imgno){
	var url="./update";
	url +="?imgno="+imgno;
	url += "&nowPage=${nowPage}";
	location.href=url;
}
function adelete (imgno, fname){
	var url="./delete";
	url += "?imgno="+imgno;
	url += "&oldfile="+fname;
	url += "&nowPage=${nowPage}";
	location.href=url;
	
}
</script>
</head> 
<body> 
<div class="title"> 이미지 리스트</div>
<DIV class="search">
<form method="post" action="./list">
			<select name="col">
				<c:if test="${col=='name' }">selected='selected'</c:if>
				<option value="wname"
				>성명</option>
				<c:if test="${col=='title' }">selected='selected'</c:if>
				<option value="title"
				>타이틀</option>
				
				<option value="total">전체출력</option>
			</select>
			<input type="text" name="word" value="${param.word }" >
			<button>검색</button>
			<button type="button" onclick="location.href='./create'">등록</button>
		</form>
			</DIV>

<table>
	<tr>
		<th>번호</th>
		<th>사진</th>
		<th>이름</th>
		<th>제목</th>
		<th>수정</th>
		<th>삭제</th>
		<th>grpno</th>
		<th>indent</th>
		<th>ansnum</th>
		
	</tr>
<c:choose>
<c:when test="${empty list }">
	<tr>
		<td colspan=9> 등록된 글이 없습니다.	</td>
	</tr>
</c:when>
<c:otherwise>
<c:forEach var="dto" items="${list }">

	<tr>
	<td>
		<c:if test="${dto.indent>0 }">
		<img src='../images/re.jpg'>
		</c:if>
		${dto.imgno }
	</td>

	<td><img src="./storage/${dto.fname}" width="100" height="90"></td>
		<td>${dto.wname }</td>
		<c:forEach var="j" begin="1" end="${dto.indent }">
		<c:out value="&nbsp;&nbsp;&nbsp;" escapeXml="false"/>
		</c:forEach>
		
		 
		<td><a href="javascript:aread('${dto.imgno }')">${dto.title }</a></td>
		<td><a href="javascript:aupdate('${dto.imgno }')">수정</a></td> 
		<td><a href="javascript:adelete('${dto.imgno }', '${dto.fname}')">삭제</a></td> 
		<td>${dto.grpno }</td>
		<td>${dto.indent }</td>
		<td>${dto.ansnum }</td>
    </tr>
	</c:forEach>
</c:otherwise>
	</c:choose>	
</table>

<div class="bottom">
${ paging }	
</div>
</body> 
</html> 