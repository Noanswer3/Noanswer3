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
			<input class="join_input" type="text" name="client_id" placeholder="���̵� �Է��ϼ���" style="width:600px; height:50px; font-size:12px; position: absolute; top: 15vw; right: 36vw;"><p>
			<input class="join_input" type="password" name="client_pw" placeholder="��й�ȣ�� �Է��ϼ���" style="width:600px; height:50px; font-size:12px; position: absolute; top: 19vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_tel" placeholder="��ȭ��ȣ�� �Է��ϼ���" style="width:600px; height:50px; font-size:12px; position: absolute; top: 23vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_email" placeholder="�̸����� �Է��ϼ���" style="width:600px; height:50px; font-size:12px; position: absolute; top: 27vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_name" placeholder="�̸��� �Է��ϼ���" style="width:600px; height:50px; font-size:12px; position: absolute; top: 31vw; right: 36vw;"><p>
			<input class="join_input" type="text" name="client_address" placeholder="�ּҸ� �Է��ϼ���" style="width:600px; height:50px; font-size:12px; position: absolute; top: 35vw; right: 36vw;"><p>
			<input class="join_submitinput" type="submit" value="ȸ������" class="button fit" style="width:600px; height:40px; font-size:20px; border:none; position: absolute; top: 39vw; right: 36vw;" >
		</form>
	</div>
</body>
</html>