<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% MemberDTO member = (MemberDTO)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
</head>
<body>
	<%
		MemberDAO dao = new MemberDAO();

	%>
	<div class="select">
		<div class="header">
			<h1 class="loginPage__title"><img src="img/INSTAY.jpg" style="top: 0vw; left: 5vw; position: absolute; opacity: 1.0; width: 320px;"></h1>
			<h2 style= "color : black; top: 7vw; right: 40vw; position: absolute;">(회원 이름)님의 정보</h2>
		</div>
		<form action="UpdateCon" method="post" style="top: 20vw; right: 23vw; position: absolute;">
			<table border= 1>
				<tr height=60>
					<td width=200>이름</td>
					<td width=400>정유민</td>
					<td width=400><input type="text" placeholder="수정할 이름 입력" name="update_name" style= "width:395px; height:50px;"></td>
				</tr>
				<tr height=60>
					<td width=200>비밀번호</td>
					<td width=400>1234</td>
					<td width=400><input type="password" placeholder="수정할 비밀번호 입력" name="update_pw" style= "width:395px; height:50px;"></td>
				</tr>
				<tr height=60>
					<td width=200>전화번호</td>
					<td width=400>010-1234-5678</td>
					<td width=400><input type="text" placeholder="수정할 전화번호 입력" name="update_tel" style= "width:395px; height:50px;"></td>
				</tr>
				<tr height=60>
					<td width=200>이메일</td>
					<td width=400>ㅇㅇㅇ@naver.com</td>
					<td width=400><input type="text" placeholder="수정할 이메일 입력" name="update_email" style= "width:395px; height:50px;"></td>	
				</tr>
				<tr height=60>
					<td width=200>주소</td>
					<td width=400>광주</td>
					<td width=400><input type="text" placeholder="수정할 주소 입력" name="update_address" style= "width:395px; height:50px;"></td>
				</tr>
			</table>
			<input type="submit" value="수정완료" style= "width:100px; height:50px; top: 7vw; right: -10vw; position: absolute;">
		</form>
	</div>
</body>
</html>