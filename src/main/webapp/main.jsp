<%@page import="org.apache.catalina.ha.tcp.SendMessageData"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<% MemberDTO member = (MemberDTO)session.getAttribute("member"); 
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
	%>
   

<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>INSTAY</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/main_style.css" />
<link rel="stylesheet" type="text/css" href="css/style_main.css" />

<noscript>
	<link rel="stylesheet" type="text/css" href="css/noscript.css" />
</noscript>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap')
	;
</style>
<style>
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}
</style>

</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" style="height: 100.19967px;">
			<a href="index.html" class="logo"> <img src="./img/logo.png"
				style="width: 350px; height: 100px; position: absolute; left: 5em; top: 1em; margin:20px 0 0 20px;"
				alt="">
			</a>
			<!-- Nav -->
			 <nav>
				<ul>
					<li style=""><a href="#menu">Menu</a></li>
				</ul>
			</nav> 
			<div class="inner"></div> 
		</header>
		<!-- Menu -->
	<nav id="menu">
			<h5>Menu</h5>
			<ul >
				<!-- <li><a href="index.html">Home</a></li> -->
				<li>����������</li>
					<ul>
				 	<%
				 		if (member != null) {
		
				 			 out.print(String.format("<li><a href='my_update.jsp?id=%s' style = 'visibility:visible; color : #ffffff;'>ȸ����������</a></li>", member.getId())); 
				 			 out.print(String.format("<li><a href='my_reservation.jsp?id=%s' style = 'visibility:visible; color : #ffffff;'>��������</a></li>", member.getId())); 
				 		}
				 	%>
				 	
						
				 	</ul>
				 
				<!-- <li><a href="generic.html">Tempus etiam</a></li>
				<li><a href="generic.html">Consequat dolor</a></li> -->
				<%if(id!=null){ %>
				<li><a href="DeleteCon">�α׾ƿ�</a></li>
				<% }else{%>
				<li><a href="login.jsp">�α���</a></li>
				<%} %>
			</ul>
			<ul><li><a href ="about.html">about</a></li></ul>
		</nav> 
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<header>
					<h1>
						<!-- �����̵��  -->

						<div class="slideshow-container"
							style="width: 400px; height: 600px;">
							<div class="mySlides fade">
								<img src="img/hanok/hanok_1_1.PNG"
									style="width: 1640px; height: 600px; margin: 0px 0 0 130px;">
								<!-- <div class="text">Caption One</div> -->
							</div>

							<div class="mySlides fade">
								<img src="img/hanok/hanok_1_2.PNG"
									style="width: 1640px; height: 600px; margin: 0px 0 0 130px;">
								<!-- <div class="text">Caption Two</div> -->
							</div>

							<div class="mySlides fade">
								<img src="img/hanok/hanok_1_3.PNG"
									style="width: 1640px; height: 600px; margin: 0px 0 0 130px;">
								<!-- <div class="text">Caption Three</div> -->
							</div>

						</div>


						<!--�����̵� ������ �κ�  -->
					</h1>
					<p></p>
				</header>
					
				<section class="tiles" style="margin-left: 73px; width: 1700px;">
				<article style="width: 1500px; hegiht:3px">						
							<h1 style="font-size : 50px; margin: 0 0 0 50px">#ī�װ�</h1>
					</article>
		<article class="style1">
						<span class="image"> <img src="img/pic01.jpg" alt="" />
						</span> <a href="index_hanok.html">
							<h2>�ѿ�������</h2>
							<div class="content">
								<p>�ѱ��� ���븦 ���� �� �����鼭 �ڿ� �ӿ��� ������ �� �� �ִ� ����</p>
							</div>
						</a>
					</article>
					<article class="style2">
						<span class="image"> <img src="img/pic02.jpg" alt="" />
						</span> <a href="index_couple.html">
							<h2>Ŀ�ü���</h2>
							<div class="content">
								<p>Ư���ѳ�������, ���ΰ���������, ��������, �Ƹ��ٿ�, �θ�ƽ�� ������ ���� ����</p>
							</div>
						</a>
					</article>
					<article class="style3">
						<span class="image"> <img src="img/pic03.png" alt="" />
						</span> <a href="index_gamsung.html">
							<h2>��������</h2>
							<div class="content">
								<p>���� ������ ã�Ƶ� �������Ҹ� �Ұ��մϴ�. ��ε� ������ ���ϴ� ����</p>
							</div>
						</a>
					</article>

					<article class="style6">
						<span class="image"> <img src="img/pic04.jpg" alt="" />
						</span> <a href="index_pool.html">
							<h2>Ǯ����</h2>
							<div class="content">
								<p>��������, ���� ���ƴٴϴ� ���ຸ�ٴ� ��� ���� �� �ذ�Ǵ� Ǯ���󿡼� �����̺��ϰ� ���� �ִ� ����</p>
							</div>
						</a>
					</article>
					<article class="style4">
						<span class="image"> <img src="img/pic05.jpg" alt="" />
						</span> <a href="healing.jsp">
							<h2>��������</h2>
							<div class="content">
								<p>���� ���� �ӿ��� �����ϰ� ���� ������ �� �ִ� ����</p>
							</div>
						</a>
					</article>
					<article class="style5">
						<span class="image"> <img src="img/pic06.jpg" alt="" />
						</span> <a href="index_hanok.html">
							<h2>�������</h2>
							<div class="content">
								<p>�ٻ� �ϻ��� ��� �������� ������ �Բ� ����ϰ� ��� �� �ִ� ����</p>
							</div>
						</a>
					</article>
							<article style="width: 1500px; hegiht:3px">						
							<h1 style="font-size : 50px; margin: 0 0 0 50px">#����</h1>
					</article>

					<article class="style1">
						<span class="image"> <img src="img/pic07.png" alt="" />
						</span> <a href="index_geoje.html">
							<h2>�������</h2>
							<div class="content">
								<p>������ �����غ��� ���� �����ϰ� ���� ���� �������� �˾ƺ���</p>
							</div>
						</a>
					</article>
					<article class="style2">
						<span class="image"> <img src="img/pic08.png" alt="" />
						</span> <a href="index_yanggo.html">
							<h2>��硤�� ���</h2>
							<div class="content">
								<p>���� �ڿ� �׸��� ������ ������ ���Ѵٸ� ������ ������ ���� ?</p>
							</div>
						</a>
					</article>
					<article class="style3">
						<span class="image"> <img src="img/pic09.png" alt="" />
						</span> <a href="index_taean.html">
							<h2>�¾����</h2>
							<div class="content">
								<p>���ɿ� õ���� ��������� ���ΰ �����ؼ����忡�� �Ϸ縦 ��� ���ô°� ����?</p>
							</div>
						</a>
					</article>
					</article>
					<article class="style4">
						<span class="image"> <img src="img/pic10.jpg" alt="" />
						</span> <a href="index_hanok.html">
							<h2>�������</h2>
							<div class="content">
								<p>�ػ� ���̺�ī, ������ö���� ���� ������ ���ǿ� ������ ���� ����?</p>
							</div>
						</a>
					</article>

					</article>
					<article class="style5">
						<span class="image"> <img src="img/pic11.jpg" alt="" />
						</span> <a href="index_hanok.html">
							<h2>�������</h2>
							<div class="content">
								<p>�� �ָ� �������� �����ø� ��󳲵� ���ر��� �����?</p>
							</div>
						</a>
					</article>

					</article>
					<article class="style6">
						<span class="image"> <img src="img/pic12.jpg" alt="" />
						</span> <a href="index_hanok.html">
							<h2>������</h2>
							<div class="content">
								<p>�׳�� �ڿ��� ���� ��Ÿ�����̾� �濡�� �λ��� �� ���ϰ� ���� �ķ��</p>
							</div>
						</a>
					</article>

				</section>
			</div>
		</div>

		<!-- Footer -->
		<footer id="footer">
			<div class="inner" style="margin: 0 0 0 200px;">
				<section>
					<h2>Get in touch</h2>
					<form method="post" action="#">
						<div class="fields">
							<div class="field half">
								<input type="text" name="name" id="name" placeholder="Name" />
							</div>
							<div class="field half">
								<input type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="field">
								<textarea name="message" id="message" placeholder="Message"></textarea>
							</div>
						</div>
						<ul class="actions">
							<li><input type="submit" value="Send" class="primary" /></li>
						</ul>
					</form>
				</section>
				<section>
					<h2>Follow</h2>
					<ul class="icons">
						<li><a href="#" class="icon brands style2 fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands style2 fa-facebook-f"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands style2 fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands style2 fa-dribbble"><span
								class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon brands style2 fa-github"><span
								class="label">GitHub</span></a></li>
						<li><a href="#" class="icon brands style2 fa-500px"><span
								class="label">500px</span></a></li>
					</ul>
				</section>
				<ul class="copyright">
					<li>&copy; Untitled. All rights reserved</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="./js/jquery.min.js"></script>
	<script src="./js/browser.min.js"></script>
	<script src="./js/breakpoints.min.js"></script>
	<script src="./js/util.js"></script>
	<script src="./js/main.js"></script>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>


</body>
</html>