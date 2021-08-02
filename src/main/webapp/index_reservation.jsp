<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Booking Form HTML Template</title>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style2.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<script src="jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	function inputMoveNumber(num) {

		if(isFinite(num.value) == false) {
			alert("카드번호는 숫자만 입력할 수 있습니다.");
			num.value = "";
			return false;
		}

		max = num.getAttribute("maxlength");

		if(num.value.length >= max) {

			num.nextElementSibling.focus();

		}
	}
</script>
</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-push-5">
						<div class="booking-cta">
						<% %>
							<h1>InStay Reservation</h1>
							<p>Smart Human Resources Development<br> 
							BigData 5th Course<br>
							Learning Machine Team<br>
							JYM, KSM, KDH, BJM, ODH</p>
						</div>
					</div>
					<div class="col-md-4 col-md-pull-7">
						<div class="booking-form">
							<form action = "ReservationCon" method = "post">
								<div class="form-group">
									<span class="form-label" style = "font-size : 30px;">숙소이름 예약</span>
									<!-- <input class="form-control" type="text" placeholder="Enter a destination or hotel name"> -->
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Check In</span> <input
												class="form-control" type="date" name = "startDate" required >
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Check out</span> <input
												class="form-control" type="date" name = "endDate" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Rooms</span> <select
												class="form-control" name = "room">
												<option value = "R1">1</option>
												<option value = "R2">2</option>
												<option value = "R3">3</option>
												<option value = "R4">4</option>
											</select> <span class="select-arrow"></span>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Adults</span> <select
												class="form-control" name = "aNumber">
												<option value = "A1">1</option>
												<option value = "A2">2</option>
												<option value = "A3">3</option>
												<option value = "A4">4</option>
												<option value = "A5">5</option>
												<option value = "A6">6</option>
												<option value = "A7">7</option>
												<option value = "A8">8</option>
												<option value = "A9">9</option>
												<option value = "A10">10</option>
											</select> <span class="select-arrow"></span>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Children</span> <select
												class="form-control" name = "cNumber">
												<option value = "C0">0</option>
												<option value = "C1">1</option>
												<option value = "C2">2</option>
												<option value = "C3">3</option>
												<option value = "C4">4</option>
												<option value = "C5">5</option>
												<option value = "C6">6</option>
												<option value = "C7">7</option>
												<option value = "C8">8</option>
												<option value = "C9">9</option>
												<option value = "C10">10</option>
											</select> <span class="select-arrow"></span>
										</div>
									</div>
								</div>

									<div class="row">
									
										<div class="col-sm-4">
											<div class="form-group">
												<span class="form-label">카드사</span> <select
													class="form-control" name = "cardCo">
													<option value = "kook">국민</option>
													<option value = "hana">하나</option>
													<option value = "samsung">삼성</option>
												</select> <span class="select-arrow"></span>
											</div>
										</div>
										
										<div class="col-sm-4">
											<div class="form-group">
												<span class="form-label">카드번호</span> 
												
													<!-- <input class="form-control" type="text"
													placeholder="Enter card-number" style = "width : 10px; display : inline-block;">
													<input class="form-control" type="text"
													placeholder="Enter card-number" style = "width : 10px; display : inline-block;"> -->
												<div class = "row" style = "width : 220px; margin : 0 0 0 3px;">
													<input name = "cardNumber1" type="text" class="moveNumber" onKeyup="inputMoveNumber(this);" maxlength="4"  />
													<input name = "cardNumber2" type="password" class="moveNumber" onKeyup="inputMoveNumber(this);" maxlength="4" />
													<input name = "cardNumber3" type="text" class="moveNumber" onKeyup="inputMoveNumber(this);" maxlength="4" />
													<input name = "cardNumber4" type="password" class="moveNumber" maxlength="4"/>
												</div>		
											</div>
										</div>
									</div>

								<div class="form-btn">
									<button class="submit-btn"><a href = "Last.html" target = "_blank">Check availability</a></button>
									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>