
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ �Ϸ�</title>
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
							<li><h1>ȯ���մϴ�!</h1></li>
							<li>ȸ�������� �����մϴ�.</li>
							<!-- request������ ����� ȸ������ �� �̸����� ����Ͻÿ�. -->
							<li>�޼����ý����� ���ο� �̸����� <%=request.getAttribute("email") %>�Դϴ�.</li>
							<li><button onclick='location.href="main.jsp"'>�����ϱ�</button></li>
						</ul>
					</nav>			
			</div>

	</body>
</html>
