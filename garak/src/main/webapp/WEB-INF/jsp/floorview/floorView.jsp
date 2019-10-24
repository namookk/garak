<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=67zopzwnlj&submodules=geocoder"></script>
    <script>
        
            $(document).ready(function(){
            	
            	$('.floor-wrap > ul > li ').on('click',function(){
                    $(".floor-wrap > ul > li").removeClass("on");
                    selectDevelopmentSeq($(this).text());
                    $(this).addClass("on");
                });

                $('.floor-info').animate({"opacity":"1"},500);
                $('.floor-desc').animate({"opacity":"1"},500);
                $('.notice-wrap').animate({"opacity":"1"},500);

                var letitude = 37.497300;
                var longtitude = 127.107704;
                
                // var mapOptions = {
                //     center: new naver.maps.LatLng(letitude, longtitude),
                //     zoom: 12,
                //     minZoom: 12,
                //     maxZoom: 12
                

                // var map = new naver.maps.Map('map', mapOptions); */
                var HOME_PATH = window.HOME_PATH || '.';
                var MARKER_SPRITE_X_OFFSET = 29,
                    MARKER_SPRITE_Y_OFFSET = 50;
//                 var MARKER_SPRITE_POSITION ;
                
               
//                 	MARKER_SPRITE_POSITION = {
//                             "A0": [0, 0],
//                             "B0": [MARKER_SPRITE_X_OFFSET, 0],
//                             "C0": [MARKER_SPRITE_X_OFFSET*2, 0],
//                             "D0": [MARKER_SPRITE_X_OFFSET*3, 0],
//                             "E0": [MARKER_SPRITE_X_OFFSET*4, 0],
//                             "F0": [MARKER_SPRITE_X_OFFSET*5, 0],
//                             "G0": [MARKER_SPRITE_X_OFFSET*6, 0],
//                             "H0": [MARKER_SPRITE_X_OFFSET*7, 0],
//                             "I0": [MARKER_SPRITE_X_OFFSET*8, 0],

//                             "A1": [0, MARKER_SPRITE_Y_OFFSET],
//                             "B1": [MARKER_SPRITE_X_OFFSET, MARKER_SPRITE_Y_OFFSET],
//                             "C1": [MARKER_SPRITE_X_OFFSET*2, MARKER_SPRITE_Y_OFFSET],
//                             "D1": [MARKER_SPRITE_X_OFFSET*3, MARKER_SPRITE_Y_OFFSET],
//                             "E1": [MARKER_SPRITE_X_OFFSET*4, MARKER_SPRITE_Y_OFFSET],
//                             "F1": [MARKER_SPRITE_X_OFFSET*5, MARKER_SPRITE_Y_OFFSET],
//                             "G1": [MARKER_SPRITE_X_OFFSET*6, MARKER_SPRITE_Y_OFFSET],
//                             "H1": [MARKER_SPRITE_X_OFFSET*7, MARKER_SPRITE_Y_OFFSET],
//                             "I1": [MARKER_SPRITE_X_OFFSET*8, MARKER_SPRITE_Y_OFFSET],

//                             "A2": [0, MARKER_SPRITE_Y_OFFSET*2],
//                             "B2": [MARKER_SPRITE_X_OFFSET, MARKER_SPRITE_Y_OFFSET*2],
//                             "C2": [MARKER_SPRITE_X_OFFSET*2, MARKER_SPRITE_Y_OFFSET*2],
//                             "D2": [MARKER_SPRITE_X_OFFSET*3, MARKER_SPRITE_Y_OFFSET*2],
//                             "E2": [MARKER_SPRITE_X_OFFSET*4, MARKER_SPRITE_Y_OFFSET*2],
//                             "F2": [MARKER_SPRITE_X_OFFSET*5, MARKER_SPRITE_Y_OFFSET*2],
//                             "G2": [MARKER_SPRITE_X_OFFSET*6, MARKER_SPRITE_Y_OFFSET*2],
//                             "H2": [MARKER_SPRITE_X_OFFSET*7, MARKER_SPRITE_Y_OFFSET*2],
//                             "I2": [MARKER_SPRITE_X_OFFSET*8, MARKER_SPRITE_Y_OFFSET*2]
//                         };
//                 }
                var map = new naver.maps.Map('map', {
                    center: new naver.maps.LatLng(letitude, longtitude),
                    zoom: 10
                });
                
                var bounds = map.getBounds(),
                    southWest = bounds.getSW(),
                    northEast = bounds.getNE(),
                    lngSpan = northEast.lng() - southWest.lng(),
                    latSpan = northEast.lat() - southWest.lat();
                
                var markers = [],
                    infoWindows = [];

 				function selectDevelopmentSeq(seq){
                    $.ajax({
                		type : "post",
                		url : "/floorView/prdPerDevelopment",
                		data : seq,
                		error:function(e) {
                			alert("error : 정보를 가지고 오는데 실패했습니다.");
                		},
                		success:function(data){
                			if(0 < markers.length){
                				for(var i = 0; i < markers.length ; i++){
                					var marker = markers[i];
	                				hideMarker(map, marker);
                				}
                			}
                			
                			var sdata = JSON.parse(data);
                			var prdList = sdata.prdList;
                			
                			if(prdList != null){
               					for(var i = 0; i < prdList.length ; i++){
               						
               						var position = new naver.maps.LatLng(
               		                        southWest.lat() + latSpan * Math.random(),
               		                        southWest.lng() + lngSpan * Math.random());
               		
           		                  	var marker = new naver.maps.Marker({
           		                        map: map,
           		                        position: position,
           		                        title: prdList[i].prdList,
           		                        icon: {
           		                            url: HOME_PATH +'/img/example/sp_pins_spot_v3.png',
           		                            size: new naver.maps.Size(24, 37),
           		                            anchor: new naver.maps.Point(12, 37),
           		                            origin: new naver.maps.Point(prdList[i].letitude, prdList[i].longtitude)
           		                        },
           		                        zIndex: 100
           		                    });
           		
           		                    var infoWindow = new naver.maps.InfoWindow({
           		                        content: '<div style="width:150px;text-align:center;padding:10px;">The Letter is <b>"'+ prdList[i].prdList +'"</b>.</div>'
           		                    });
           		                    
           		                    markers.push(marker);
           		                    infoWindows.push(infoWindow);
               					}
                			}
                		}
                	});
                }
 				
                naver.maps.Event.addListener(map, 'idle', function() {
                    updateMarkers(map, markers);
                });

                function updateMarkers(map, markers) {

                    var mapBounds = map.getBounds();
                    var marker, position;

                    for (var i = 0; i < markers.length; i++) {

                        marker = markers[i]
                        position = marker.getPosition();

                        if (mapBounds.hasLatLng(position)) {
                            showMarker(map, marker);
                        } else {
                            hideMarker(map, marker);
                        }
                    }
                }

                function showMarker(map, marker) {
                	console.log(marker.setMap());
                    if (marker.setMap()) return;
                    marker.setMap(map);
                }

                function hideMarker(map, marker) {
					console.log(marker.setMap());
                    if (!marker.setMap()) return;
                    marker.setMap(null);
                }

                // 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
                function getClickHandler(seq) {
                    return function(e) {
                        var marker = markers[seq],
                            infoWindow = infoWindows[seq];

                        if (infoWindow.getMap()) {
                            infoWindow.close();
                        } else {
                            infoWindow.open(map, marker);
                        }
                    }
                }

                for (var i=0, ii=markers.length; i<ii; i++) {
                    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
                    alert();
                }
            });
            
    </script>
</head>
<body>
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
    	<div class="main-wrap">
            <div class="floor-wrap">
                <ul>
                    <li class="on">39A</li><li>39B</li><li>39C</li><li>39D</li><li>49A</li><li>49B</li><li>49C</li><li>49D</li><li>59</li>
                    <li>84A</li><li>84B</li><li>84C</li><li>84D</li><li>84E</li><li>84F</li><li>84G</li><li>84H</li><li>84I</li>
                    <li>84J<sub>1</sub></li><li>84J<sub>2</sub></li> <li>84K</li><li>84L</li><li>99</li><li>110A</li><li>110B</li><li>130</li><li>150A</li>
                </ul>
                <span style="width:100%;font-size:30px;font-weight:bold;text-align:left;margin:20px;display:block;">주택형</span>
                <div class="floor-info">
                    <div class="floor-info-title">
                        39A
                        <span class="sede1">811세대</span>
                        <span class="sede2">조 합 113세대</span>
                        <div class="floor-info-desc">
                            <table>
                                <tr>
                                    <td>전 용 면 적</td>
                                    <td>39.17㎡</td>
                                </tr>
                                <tr>
                                    <td>주 거 공 용 면 적</td>
                                    <td>22.27㎡</td>
                                </tr>
                                <tr>
                                    <td>공 급 면 적</td>
                                    <td>61.44㎡</td>
                                </tr>
                                <tr>
                                    <td>기 타 공 용 면 적</td>
                                    <td>28.98㎡</td>
                                </tr>
                                <tr>
                                    <td>계 약 면 적</td>
                                    <td>90.42㎡</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div style="float:left;width:50%;">
                    <span class="floor-desc" style="width:100%;font-size:20px;color:#949494;font-weight:bold;text-align:left;margin:30px;display:block;">| 확장형 |</span>
                    <img class="floor-desc" src="/static/images/floor/39a_1.jpg"/>
                </div>
                <div style="float:left;width:50%;">
                    <span class="floor-desc" style="width:100%;font-size:20px;color:#949494;font-weight:bold;text-align:left;margin:30px;display:block;">| 기본형 |</span>
                    <img class="floor-desc" src="/static/images/floor/39a_2.jpg"/>
                </div>
            </div>
            <div style="width:1100px;height:650px;display:inline-block;" id="map"></div>
            <div class="notice-wrap">
                <span class="notice-icon">!</span>
                <span class="notice">페이지상에 표시된 평면도, 배치도, 면적 및 도면 내용은 소비자의 이해를 돕기 위한 것으로 실제 시공시 다소 변경될 수 있으며 <br/>마감제 컬러 및 창호 및 난간의 형태, 분할, 재료, 색상, 개페방향 등은 실제 시공시 변경 될 수 있습니다.</span>
                <br/><br/>
                <span class="notice-icon">!</span>
                <span class="notice">확장형 세대의 비확장형 발코니 외부쪽 벽체(대피공간,발코니 등)에는 단열재 및 마감재가 설치됨에 따라 실제사용 면적이 줄어들 수 있습니다.</span>
                <br/><br/>
                <span class="notice-icon">!</span>
                <span class="notice">인접세대 및 동일세대 내 각 부위별 확장여부에 따라 단열재 설치로 인한 벽체 돌출 및 실사용 면적의 증감이 있을 수 있습니다.</span>
            </div>
        </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>