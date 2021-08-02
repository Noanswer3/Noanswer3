<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

@import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@300;700&display=swap');
body{
	text-align : center;
	font-family: 'Noto Serif KR', serif;
	background-image: url('./img/background.jpg')
}

.styled-table {
    border-collapse: collapse;
    font-size: 13px;
    color : #3e485c;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    margin-left: auto; 
    margin-right: auto;
    text-align : center;
}

.styled-table thead tr {
    background-color: #3e485c;
    color: #ffffff;
    opacity : 0.9;
}

.styled-table th,
.styled-table td {
    padding: 15px 15px;
}

.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
    background-color : #ffffff;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #dddddd;
    opacity : 0.2;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #dddddd;
}
#div1{
	width : 780px;
	height : 510px;
	margin-top: 100px;
	margin-left: auto; 
	margin-right: auto;
	background-color : #ffffff;
	border-radius: 10px;
}
</style>

</head>
<body>
<div id = "div1">
<p style = "height : 1px;"></p>
<p style = "margin : 1.5rem 0 2rem 0; font-size : 20px; font-weight : bolder; "><%=request.getParameter("id")%>님의 예약정보입니다.</p>

<table class="styled-table" style = "border-radius: 10px;">
    <thead>
        <tr>
            <th>숙소</th>
            <th>호실</th>
            <th>예약 시작일</th>
            <th>예약 종료일</th>
            <th>숙박 인원</th>
            <th>결제 정보</th>
            <th>결제 요금</th>            
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>서림연가</td>
            <td>01호</td>
            <td>2021-07-17</td>
            <td>2021-07-18</td>
            <td>어른 2명, 아이 2명</td>
            <td>국민카드</td>
			<td>100,000 원</td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr class="active-row">
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
		<tr>
		</tr>       
    </tbody>
</table>
<br>
<button onclick = "location.href = 'main.jsp'" 
style = "width : 80px; height : 30px; border:none; background : #3e485c; color : #ffffff;
border-radius: 5px;">홈으로</button>
</div>
</body>
</html>