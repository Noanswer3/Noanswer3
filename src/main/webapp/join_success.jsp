
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 완료</title>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');

		#Update > ul.actions {
			margin-top:10%;
		}</style>

<body style="text-align: center;">

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h1>환영합니다!</h1></li>
							<li>회원가입을 축하합니다.</li>
							<!-- request영역에 저장된 회원정보 중 이메일을 출력하시오. -->
							<li>메세지시스템의 새로운 이메일은 <%=request.getAttribute("email") %>입니다.</li>
							<li><button onclick='location.href="main.jsp"'>시작하기</button></li>
						</ul>
					</nav>			
			</div>

	</body>
</html>
