
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>TaskForce</title>
	 <style> /* map을 화면 전체에 체워주기 위한 css */
      html,
      body {
        width: 100%;
        height: 100%;
      } /* html과 body부분 화면 전체로 채우는 틀 형성 */
      
      #map {
        width: 100%;
        height: 100%;
      } /* map이라는 id를 가지고와서 전체 화면을 차지할 수 있도록 설정  */
      
  <style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 800px;height: 1000px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px; width: 800px; height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    </style>
    
</head>
<body>

	<div id="map" ></div><!-- 실질적으로 map이 띄워지는 태그 <지도를 담기위한 영역> -->
	<script src="./JavaScript/jquery-3.6.0.min.js"></script> <!--  jquery를 쓰기 위해 라이브러리를 불러온다. -->)
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0cf1aff0c9fcd40120a631cc3b59deec&libraries=services,clusterer,drawing"></script>
	<!-- 5e209bbdbc91f44662e1ee4f21fdafeb ==> 카카오api 사이트에서 발급 받은 키
	쿼리 스트링 방식으로 dapi.kakao.com프로그램 sdk.js를 실행할 때 카카오api에서 발급받은 키를 가지고 실행하라는 소리이다. -->
	<script>
	var customOverlay;
	$.ajax({ /* $.ajax()는 비동기식 Ajax를 이용하여 HTTP 요청을 전송한다는 의미이다.*/
		type : "post", /* 디폴트는 get 형식으로 데이터를 전송하지만 post방식으로도 가능 */
		dataType : "json", //서버에서 받을 데이터 형식을 지적한다.(default: xml, jason, script, text,html )
		url : "ACC_info", //요청받을 서블릿 url 이름(client가 http요청을 보낼 서버의 주소)
		success : function(check){ // 요청이 성공일 때 실행된는 call back 함수, 여기서는 jarray값을 check가 받는다. 

				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { // mapoption이라는 변수에 지도좌표와 지도확대레밸을 저장
				        center: new kakao.maps.LatLng(35.908342678089944, 127.78035584041811), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  
				
		
				
				// mapContainer와 mapOption을 변수로 받아 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				
				
				//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
				var mapTypeControl = new kakao.maps.MapTypeControl();

				// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
				// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
				map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

				// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
				var zoomControl = new kakao.maps.ZoomControl();
				map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
				
				
				// 주소->좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				
				/*  function setcenteraddr(result,status){
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					map.setCenter(coords); 
				}
				geocoder.addressSearch(list.get(1), setcenteraddr(null,null)); 
				system.out.print(list[0][1]);  */
		
		
							
				function info(result, status, name, tell){//좌표 검색과, 해당 좌표에 대한 데이터를 출력하기 위한 클로저 함수 (callback함수)
				
				
				return function(result, status) { // 함수를 return한다.
					
					
					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {
					
					       var coords = new kakao.maps.LatLng(result[0].y, result[0].x); 
					
					        // 기존 중심좌표로부터 새로 검색한곳으로 중심 좌표 이동
					       /*  if(coord == 명주하녹) {
					        	 map.setCenter(coords); 
					        }가가나 {
					        	
					        } */
					        
					        map.setCenter(coords); 
					      
					        
					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });
					
					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '업소명 :<div style="width:150px;text-align:left;padding:0px 0;">'+name+'</div><br>'+
					            '전화번호 :<div style="width:150px;text-align:left;padding:0px 0;">'+tell+'</div>'
					        });
					        
					    
					        
					        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
					        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
					        // ★★★★★for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
					        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
					        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					        
					      
					      	
				     		// 마커에 클릭이벤트를 등록합니다
					        kakao.maps.event.addListener(marker, 'click', function() {
			
					        	
						     	var url = "res_index.jsp?name=" +name+ "&tell=" +tell;
					        	
								var content =	
									'<div class = "overlaybox" style = "width:800px; height:1000px;" >' +
									'<div class="wrap" >' + 
						            '    <div class="info" style = "width = 800px;">' + 
						            '        <div class="title" style = "width = 800px;" >' + 
						            '            숙소예약' + 
						            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
						            '        </div>' + 
									
									
									'<iframe id = "site" src="'+url +'" ' +
												'width="800px" ' +
												'height="1000px" ' +
												'frameborder="0" ' +
												'style="border:0;" ' +
												'allowfullscreen="" ' +
												'aria-hidden="false" ' +
												'tabindex="0">' +
												
								'</div>' +
								 '    </div>' +    
						           '</div>';
						           

					
								customOverlay = new kakao.maps.CustomOverlay({
										map:map,
										position: coords,
							            content: content,
							            xAnchor: -0.28,
							            yAnchor: 0.5
							            
							        });
					            // 커스텀 오버레이를 지도에 표시합니다
						        customOverlay.setMap(map);
	
					        });	
				   
					    } 
					    
					}
				}
				
	 			
				for (var i = 0; i < check.length; i ++) {
					// 주소로 좌표를 검색하여 map 에 마크로 나타낸다
					geocoder.addressSearch(check[i].address, info(null,null, check[i].name, check[i].tell));
					
				}
				
				// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
				function makeOverListener(map, marker, infowindow) {
				    return function() {
				        infowindow.open(map, marker);
				    };
				}
				// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
				function makeOutListener(infowindow) {
				    return function() {
				        infowindow.close();
				    };
				}


			    map.setCenter(35.908342678089944, 127.78035584041811); 
			      
	        			
							
		}
	});

	function closeOverlay() {
		
        customOverlay.setMap(null);     
    }
	

 
    
			
	    
</script>
</body>