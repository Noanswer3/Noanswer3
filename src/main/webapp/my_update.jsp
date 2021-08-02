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
<style>

body{
	text-align : center;
	font-family: 'Noto Serif KR', serif;
	background-image: url('./img/background.jpg');
	background-size:cover;
}

#div1{
margin-left : auto; 
margin-right : auto; 
width : 700px; 
height : 800px; 	
background-color : #ffffff;
border-radius: 10px;
}
@import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300;700&display=swap');

</style>
</head>
<body>


	<div class="select" style = "font-family: 'Noto Serif KR', serif;">
		<div id = "div1">
		<div class="header">	
			<h2 style= "position: relative; color : black; font-size:35px; text-align : center;"><br>회원정보수정</h2>
		</div>
		<form action="UpdateCon" method="post" style=" position: relative; " >
			<table border= 0.5 align="center" style="position: relative;">
				<tr height=60>
					<td style = "color : #3e485c; font-family : 'Nanum Pen Script', cursive;">아이디</td>
					</tr>
					<tr>
					<td style = "color : #3e485c; font-family : 'Nanum Pen Script', cursive;" ><%=member.getId() %></td>
				</tr>
				<tr height=60>
					<td style = "color : #3e485c; font-family : 'Nanum Pen Script', cursive;" >비밀번호</td>
					</tr>
					<tr>
					<td style = "font-family : 'Nanum Pen Script', cursive;"><input type="password" placeholder="비밀번호 입력" name="update_pw" 
					style= "width:395px; height:50px; background-color: #dddddd; border-radius: 10px; border:none;"></td>
				</tr>
				<tr height=60>
					<td  style = "color : #3e485c; font-family : 'Nanum Pen Script', cursive;">전화번호</td>
					</tr>
					<tr>
					<td style = "font-family : 'Nanum Pen Script', cursive;" ><input type="text" placeholder="전화번호 입력" name="update_tel" 
					style= "width:395px; height:50px; background-color: #dddddd; border-radius: 10px; border:none;"></td>
				</tr>
				<tr height=60>
					<td style = "color : #3e485c; font-family : 'Nanum Pen Script', cursive;" >이메일</td>
					</tr>
					<tr>
					<td style = "font-family : 'Nanum Pen Script', cursive;" ><input type="text" placeholder="이메일 입력" name="update_email" 
					style= "width:395px; height:50px; background-color: #dddddd; border-radius: 10px; border:none;"></td>	
				</tr>
				<tr height=60>
					<td  style = "color : #3e485c; font-family : 'Nanum Pen Script', cursive;">주소</td>
					</tr>
					<tr>
					<td style = "font-family : 'Nanum Pen Script', cursive;" ><input type="text" placeholder="주소 입력" name="update_address" 
					style= "width:395px; height:50px; background-color: #dddddd; border-radius: 10px; border:none;"></td>
				</tr>
				
				<tr height="50">
					<td >　</td>
				</tr>
				<tr>
					<td align="center"><input type="submit" value="수정완료" style= "width:100px; height:50px; top: 7vw; right: -10vw; margin:50px 0 0 0 0; border-radius: 10px; border:none;";>
					<button style= "width:100px; height:50px; top: 7vw; right: -10vw; margin:50px 0 0 0 0; border-radius: 10px; border:none;";><a href ="main.jsp">Home</a></button></td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</body>
</html>