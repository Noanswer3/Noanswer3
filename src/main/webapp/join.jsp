<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
</head>
<body>
	<a href="main.jsp"><h1 class="join__title">
	<img src="img/logo.png" style="top: 5vw; right: 44vw; position: absolute; opacity: 1.0; width: 300px;"></h1></a>
	<div class="join_page">
		<form action="JoinCon" method="post"> <!-- class="join" -->
			<input class="join_input" type="text" name="client_id" placeholder="아이디를 입력하세요" style="width:600px; height:50px; font-size:12px; position: absolute; top: 15vw; right: 36vw;"><p>
			<input class="join_input" type="password" name="client_pw" placeholder="비밀번호를 입력하세요" style="width:600px; height:50px; font-size:12px; position: absolute; top: 19vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_tel" placeholder="전화번호를 입력하세요" style="width:600px; height:50px; font-size:12px; position: absolute; top: 23vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_email" placeholder="이메일을 입력하세요" style="width:600px; height:50px; font-size:12px; position: absolute; top: 27vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_name" placeholder="이름을 입력하세요" style="width:600px; height:50px; font-size:12px; position: absolute; top: 31vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_address" placeholder="주소를 입력하세요" style="width:600px; height:50px; font-size:12px; position: absolute; top: 35vw; right: 36vw;"><p>
			<input class="join_submitinput" type="submit" value="회원가입" class="button fit" style="width:600px; height:40px; font-size:20px; border:none; position: absolute; top: 39vw; right: 36vw;" >
		</form>
	</div>
</body>
</html>