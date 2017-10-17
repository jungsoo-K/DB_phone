<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/
jquery/1.6.4/jquery.js"></script>

<style type="text/css">
p {
	text-align: center;
}

img {
	display:block;
	margin-left: auto;
	margin-right: auto;
}

input[type=text]{
	padding:5px;
	text-align: left;
	margin: 0px;
	margin-left: auto;
	margin-right: auto;
}

input[type=password]{
	padding:5px;
	text-align: left;
	margin: 0px;
}

a { 
	text-decoration:none
}

button {
	background-color: black;
	color:white;
	text-align:center;
	width : 400px;
	height: 50px;
	padding:0px;
	border-radius: 15px;
	margin: 0 auto;
	cursor: pointer;
}

table {
	margin-left: auto;
	margin-right: auto;
}

div > #span {
	float :right;
}


.login{
	text-align: center;
}

#idCheck {
	float :right;
}
</style>
</head>
<body background="./img/bgImg.jpg">
<br>
<br>

<p><img src="./img/loginLogo.png" ></p>


<br>

<form name="" method="POST" action="">
	<table>
		<tr>
			<td>
			<div>
			<a href="history.back()" style="color: silver">이전</a> <span id="span"style="font-weight: bold">회원 로그인</span>
			</div>
			<br>
			<input type="text" name="id" placeholder="아이디" size="40"  ></td>
		</tr>

		<tr>
				<td>
				<div>
				<input type="password" name="password" placeholder="비밀번호" size="40" ><br>
						<a href="" style="font-size: 10px">회원 가입</a> | <a href="" style="font-size: 10px">아이디 찾기</a> | <a href="" style="font-size: 10px">회원 가입</a>
						<span id="idCheck">
						<label><input type="checkbox" id="remember" >아이디 기억</label>
						</span>
				</div>
				</td>
		</tr>

	</table>

	<div class="login"><button type="submit" >LOGIN</button></div>

</form>

<p><a href=""><img src="./img/naverLogin.png" width="400" ></a></p>
<p><a href=""><img src="./img/kakaoLogin.png" width="400"></a></p>
<p><a href=""><img src="./img/faceLogin.png" width="400"></a></p>


<br>

</body>
</html>