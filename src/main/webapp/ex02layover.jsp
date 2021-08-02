<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	//클릭한 해당 마크의 정보를 get방식으로 받아 나타내어줌
	String name = request.getParameter("name");
	String tell =request.getParameter("tell");
%>
<h2>name : <%= name %></h2>
<h2>tell : <%= tell %></h2>

<script>

var content = '<div class="overlaybox">' +
'    <div class="boxtitle">금주 영화순위</div>' +
'    <div class="first">' +
'        <div class="triangle text">1</div>' +
'        <div class="movietitle text">드래곤 길들이기2</div>' +
'    </div>' +
'    <ul>' +
'        <li class="up">' +
'            <span class="number">2</span>' +
'            <span class="title">명량</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">2</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">3</span>' +
'            <span class="title">해적(바다로 간 산적)</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">6</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">4</span>' +
'            <span class="title">해무</span>' +
'            <span class="arrow up"></span>' +
'            <span class="count">3</span>' +
'        </li>' +
'        <li>' +
'            <span class="number">5</span>' +
'            <span class="title">안녕, 헤이즐</span>' +
'            <span class="arrow down"></span>' +
'            <span class="count">1</span>' +
'        </li>' +
'    </ul>' +
'</div>';


var customOverlay = new kakao.maps.CustomOverlay({
			            position: coords,
			            content: content,
			            xAnchor: 0.3,
			            yAnchor: 0.91
			        });
			        
			     // 커스텀 오버레이를 지도에 표시합니다
			        customOverlay.setMap(map);
			        
			        </script>


      
      .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close:hover {cursor: pointer;}




		'<div class="wrap">' + 
		            '    <div class="info">' + 
		            '        <div class="title">' + 
		            '            카카오 스페이스닷원' + 
		            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
		            '        </div>' + 



</body>
</html>