<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
</style>
</head>
<body id="login_body">
<div class="login_window">
	<a href="main.jsp"><h1 class="loginPage__title"><img src="img/logo.png" style="top: 8vw; right: 43vw; position: absolute; opacity: 1.0; width: 320px;"></h1></a>
	<div class="login_page">
		<form action="LoginCon" method="post">
			<input type="text" name="client_id" placeholder="아이디를 입력하세요" style="width:500px; height:50px; font-size:12px; border:none; position: absolute; top: 20vw; right: 37vw;"><p></p>
			<input type="password" name="client_pw" placeholder="비밀번호를 입력하세요" style="width:500px; height:50px; font-size:12px; border:none; position: absolute; top: 24vw; right: 37vw;"><br><br>
			<div>
				<input type="submit" value="로그인" class="button fit" style="width:500px; height:40px; font-size:20px; border:none; background : #bad5ca; position: absolute; top: 28vw; right: 37vw;"><br><br>
				<a href="join.jsp"><input type="button" value="회원가입" class="button fit" style="width:500px; height:40px; font-size:20px; border:none; background : #bad5ca; position: absolute; top: 31vw; right: 37vw; " ></a>
			</div>
		</form>
	</div>
</div>
</body>
</html>