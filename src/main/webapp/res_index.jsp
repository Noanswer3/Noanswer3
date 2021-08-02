<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>accommodation</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main_res.css" />
	</head>
	<body class="is-preload">

		<!-- Nav -->
			<nav id="nav">
				<ul class="container">
					<li><a href="main.jsp">홈</a></li>
					<li><a href="#top">정보</a></li>
					<li><a href="#portfolio">유사 숙소</a></li>
					<li><a href="#contact">게시판</a></li>
				</ul>
			</nav>

		<!-- Home -->
			<article id="top" class="wrapper style1">
				<div class="container">
					<div class="row">
						<div class="col-4 col-5-large col-12-medium">
							<span class="image fit" ><img src="./seorim_pic/main.png" style = "height: 300px;" alt = "" >
							
							
							
							
							
							</span>
						</div>
						<div class="col-8 col-7-large col-12-medium">
							<header>
								<% 
							//클릭한 해당 마크의 정보를 get방식으로 받아 나타내어줌
							String name = request.getParameter("name");
							String hashtag = request.getParameter("hashtag");
							// 이름 & 해시태그 가져오기
							// ex) 광주하녹 #광주 #한옥스테이
								%>
									<h1>서림연가</h2>
									<h2>#힐링 #무주</h2>
							</header>
							<strong>
							가격 : 성수기 하루기준 300,000~600,000(2인 ~ 4인),
							</strong><br>
							<strong>
							추가인원 1인당 : 10,000원,
							</strong><br>
							<strong>
							BBQ 추가 : 30,000원,
							</strong><br>
							<strong>
							자쿠지 설치 : 30,000원
							</strong><br>
							<strong>주소 : 전북 무주군 설천면 삼공리 282</strong><br>
							<strong>연락처 : </strong><a href="http://html5up.net">010-3038-4062</a><br><br>
							<a href="index_reservation.jsp" class="button large scrolly">예약하기</a>
						</div>
					</div>
				</div>
			</article>
		<!-- Portfolio -->
			<article id="portfolio" class="wrapper style3">
				<div class="container">
					<header>
						<h2>여기는 어때요?</h2>
						<p></p>
					</header>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<article class="box style2">
								<a href="#" class="image featured"><img src="./seorim_pic/L1.png" alt="" /></a>
								<h3><a href="#">L1</a></h3>
								<p>가격</p>
							</article>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<article class="box style2">
								<a href="#" class="image featured"><img src="./seorim_pic/L3.png" alt="" /></a>
								<h3><a href="#">L3</a></h3>
								<p>가격</p>
							</article>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<article class="box style2">
								<a href="#" class="image featured"><img src="./seorim_pic/M1.png" alt="" /></a>
								<h3><a href="#">M1</a></h3>
								<p>가격</p>
							</article>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<article class="box style2">
								<a href="#" class="image featured"><img src="./seorim_pic/R1.png" alt="" /></a>
								<h3><a href="#">R1</a></h3>
								<p>가격</p>
							</article>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<article class="box style2">
								<a href="#" class="image featured"><img src="./seorim_pic/R2.png" alt="" /></a>
								<h3><a href="#">R2</a></h3>
								<p>가격</p>
							</article>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<article class="box style2">
								<a href="#" class="image featured"><img src="./seorim_pic/S1.png" alt="" /></a>
								<h3><a href="#">S1</a></h3>
								<p>가격</p>
							</article>
						</div>
					</div>
					<footer>
						<p>다른 숙소들을 보고 싶어요!</p>
						<a href="main.jsp" class="button large scrolly">카테고리 목록</a>
					</footer>
				</div>
			</article>

		<!-- Contact -->
			<article id="contact" class="wrapper style4">
				<div class="container medium">
					<header>
						<h2>Q&A</h2>
						<p>사장님께 질문사항을 보내주세요!
						</p>
					</header>
					<div class="row">
						<div class="col-12">
							<form method="post" action="#">
								<div class="row">
									<div class="col-6 col-12-small">
										<input type="text" name="name" id="name" placeholder="이름을 입력해주세요." />
									</div>
									<div class="col-6 col-12-small">
										<input type="text" name="email" id="email" placeholder="이메일을 입력해주세요." />
									</div>
									<div class="col-12">
										<input type="text" name="subject" id="subject" placeholder="제목을 입력해주세요." />
									</div>
									<div class="col-12">
										<textarea name="message" id="message" placeholder="내용을 입력해주세요."></textarea>
									</div>
									<div class="col-12">
										<ul class="actions">
											<li><input type="submit" value="전송" /></li>
										</ul>
									</div>
								</div>
							</form>
						</div>
					</div>
					<footer>
						<ul id="copyright">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</footer>
				</div>
			</article>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>