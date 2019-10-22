<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<style>
	body{overflow:hidden;}
	.separator{border:0.5px solid #4c4c4c;}
	::-webkit-scrollbar { width: 5px; padding: 10px 0; }
	::-webkit-scrollbar-track { background-color: none; }
	::-webkit-scrollbar-thumb { background: #372d27; border-radius: 10px; }
	::-webkit-scrollbar-button { display: none; }
</style>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=67zopzwnlj&submodules=geocoder"></script>
<script>
	$(document).ready(function(){
	
	    var scrollFl = false;
	    $('.recent-wrap').slick({
	    dots: true,
	    arrows : false,
	    infinite: false,
	    speed: 500,
	    slidesToShow: 4,
	    slidesToScroll: 4,
	    autoplay: false,
	    });
	    var letitude = 37.497570;
	    var longtitude = 127.107304;
	    var vletitude = letitude - 0.0005;
	    var vlongtitude = longtitude + 0.0025;
	    
	    var mapOptions = {
	        center: new naver.maps.LatLng(vletitude, vlongtitude),
	        zoom: 12
	    };
	
	    var map = new naver.maps.Map('map', mapOptions);
	    
	    var marker = new naver.maps.Marker({
	        position: new naver.maps.LatLng(letitude+0.00158, longtitude+0.0046),
	        map: map
	    }); 
	
	    function fnMarker(ttl){
	        naver.maps.Service.geocode({
	            address: '송파대로345'
	        }, function(status, response) {
	            if (status !== naver.maps.Service.Status.OK) {
	                return alert('Something wrong!');
	            }
	            var result = response.result, // 검색 결과의 컨테이너
	                items = result.items; // 검색 결과의 배열
	            var longtitude = items[0].point.x;
	            var letitude = items[0].point.y;
	
	            var marker = new naver.maps.Marker({
	            position: new naver.maps.LatLng(letitude, longtitude),
	            map: map
	            }); 
	            // do Something
	        });
	    }
	});
	
	</script>
	<script>
	$(document).ready(function() {
		
		$('.list-wrap .goTop').on('click',function(){
			$('.list-wrap').animate({scrollTop : 0}, 300);
		});
		
		$('.search-box').on('click',function(){
			$('.search-box').removeClass("on");
			$(this).addClass("on");
		});
	});
	
	function fnCalc(arg){
		var el = $(arg).parent().find(".size #size-data");
		var data = el.html();
		var dataFl = el.attr("flag");
	
		if(dataFl == 1){
			data = Math.round(data/3.3);
			el.attr("flag","2");
			el.html(data);
			$(arg).parent().find(".size #size-unit").html("평");
		}else{
			data = data * 3.3;
			el.attr("flag","1");
			el.html(data);
			$(arg).parent().find(".size #size-unit").html("㎡");
		}
	}
</script>
</head>
<body>
<body>
    <div class="wrap">
        <jsp:include page="../include/header.jsp"></jsp:include>
        <div class="main-wrap">
            <div class="map-wrap" id="map">

            </div>
            <div class="list-wrap">
                <div class="goTop">∧</div>

                <div class="search-form">
                    <div class="search-box on">최신순</div>
                    <div class="search-box">인기순</div>
                    <div class="search-box">가격순</div>
                    <div class="search-box">면적순</div>
                    <input type="text" class="search-input" placeholder="매물번호,제목,지역"/>
                    <img src="/static/images/search.png"/>
                </div>
				<div class="list-box" onclick="fnMarker('헬리오시티 213동')">
                    <div class="list-desc">
                        <img class="list-img" src="/static/images/ico_thema3.gif"/>
                        <div class="price-wrap">
                            <div class="price-desc" >
                                <span class="price-tag PT01">매매</span>
                                <span class="price-unit">억원</span>
                                <span class="price">15</span>
                            </div>
                        </div>
                        <div class="address-wrap">
                            <span>서울 송파구 가락동</span>
                            <div class="separator"></div>
                            <span>아파트</span>
                        </div>
                        <div class="title-wrap">
                            <span>헬리오시티 213동</span>
                            <div class="tag best">인기매물</div>
                        </div>
                        <div class="description" style="top:0;">
                            <span class="description-text" style="float:left;margin-left:10px;">
                                    <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                </span>
                            <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                        </div>
                    </div>
                </div>
                <div class="list-box">
                    <div class="list-desc">
                        <img class="list-img" src="/static/images/ico_thema3.gif"/>
                        <div class="price-wrap">
                            <div class="price-desc" >
                                <span class="price-tag PT04">전세</span>
                                <span class="price-unit">억원</span>
                                <span class="price">8</span>
                            </div>
                        </div>
                        <div class="address-wrap">
                            <span>서울 송파구 가락동</span>
                            <div class="separator"></div>
                            <span>아파트</span>
                        </div>
                        <div class="title-wrap">
                            <span>헬리오시티 213동</span>
                            <div class="tag best">인기매물</div>
                        </div>
                        <div class="description" style="top:0;">
                            <span class="description-text" style="float:left;margin-left:10px;">
                                    <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                </span>
                            <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                        </div>
                    </div>
                </div>
                <div class="list-box">
                    <div class="list-desc">
                        <img class="list-img" src="/static/images/ico_thema3.gif"/>
                        <div class="price-wrap">
                            <div class="price-desc" >
                                <span class="price-tag PT02">월세</span>
                                <span class="price-unit">만원</span>
                                <span class="price">5000 / 70</span>
                            </div>
                        </div>
                        <div class="address-wrap">
                            <span>서울 송파구 가락동</span>
                            <div class="separator"></div>
                            <span>아파트</span>
                        </div>
                        <div class="title-wrap">
                            <span>헬리오시티 213동</span>
                            <div class="tag recommand">추천매물</div>
                        </div>
                        <div class="description" style="top:0;">
                            <span class="description-text" style="float:left;margin-left:10px;">
                                    <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                </span>
                            <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                        </div>
                    </div>
                </div>
                <div class="list-box">
                     <div class="list-desc">
                         <img class="list-img" src="/static/images/ico_thema3.gif"/>
                         <div class="price-wrap">
                             <div class="price-desc" >
                                 <span class="price-tag PT01">매매</span>
                                 <span class="price-unit">억원</span>
                                 <span class="price">15</span>
                             </div>
                         </div>
                         <div class="address-wrap">
                             <span>서울 송파구 가락동</span>
                             <div class="separator"></div>
                             <span>아파트</span>
                         </div>
                         <div class="title-wrap">
                             <span>헬리오시티 213동</span>
                             <div class="tag new">최신매물</div>
                         </div>
                         <div class="description" style="top:0;">
                             <span class="description-text" style="float:left;margin-left:10px;">
                                     <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                 </span>
                             <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                         </div>
                     </div>
                 </div>
                 <div class="list-box">
                     <div class="list-desc">
                         <img class="list-img" src="/static/images/ico_thema3.gif"/>
                         <div class="price-wrap">
                             <div class="price-desc" >
                                 <span class="price-tag PT01">매매</span>
                                 <span class="price-unit">억원</span>
                                 <span class="price">15</span>
                             </div>
                         </div>
                         <div class="address-wrap">
                             <span>서울 송파구 가락동</span>
                             <div class="separator"></div>
                             <span>아파트</span>
                         </div>
                         <div class="title-wrap">
                             <span>헬리오시티 213동</span>
                             <div class="tag best">인기매물</div>
                         </div>
                         <div class="description" style="top:0;">
                             <span class="description-text" style="float:left;margin-left:10px;">
                                     <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                 </span>
                             <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                         </div>
                     </div>
                 </div>
                 <div class="list-box">
                     <div class="list-desc">
                         <img class="list-img" src="/static/images/ico_thema3.gif"/>
                         <div class="price-wrap">
                             <div class="price-desc" >
                                 <span class="price-tag PT01">매매</span>
                                 <span class="price-unit">억원</span>
                                 <span class="price">15</span>
                             </div>
                         </div>
                         <div class="address-wrap">
                             <span>서울 송파구 가락동</span>
                             <div class="separator"></div>
                             <span>아파트</span>
                         </div>
                         <div class="title-wrap">
                             <span>헬리오시티 213동</span>
                             <div class="tag best">인기매물</div>
                         </div>
                         <div class="description" style="top:0;">
                             <span class="description-text" style="float:left;margin-left:10px;">
                                     <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                 </span>
                             <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                         </div>
                     </div>
                 </div>
                 <div class="list-box">
                     <div class="list-desc">
                         <img class="list-img" src="/static/images/ico_thema3.gif"/>
                         <div class="price-wrap">
                             <div class="price-desc" >
                                 <span class="price-tag PT01">매매</span>
                                 <span class="price-unit">억원</span>
                                 <span class="price">15</span>
                             </div>
                         </div>
                         <div class="address-wrap">
                             <span>서울 송파구 가락동</span>
                             <div class="separator"></div>
                             <span>아파트</span>
                         </div>
                         <div class="title-wrap">
                             <span>헬리오시티 213동</span>
                             <div class="tag best">인기매물</div>
                         </div>
                         <div class="description" style="top:0;">
                             <span class="description-text" style="float:left;margin-left:10px;">
                                     <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                 </span>
                             <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                         </div>
                     </div>
                 </div>
                 <div class="list-box">
                     <div class="list-desc">
                         <img class="list-img" src="/static/images/ico_thema3.gif"/>
                         <div class="price-wrap">
                             <div class="price-desc" >
                                 <span class="price-tag PT01">매매</span>
                                 <span class="price-unit">억원</span>
                                 <span class="price">15</span>
                             </div>
                         </div>
                         <div class="address-wrap">
                             <span>서울 송파구 가락동</span>
                             <div class="separator"></div>
                             <span>아파트</span>
                         </div>
                         <div class="title-wrap">
                             <span>헬리오시티 213동</span>
                             <div class="tag best">인기매물</div>
                         </div>
                         <div class="description" style="top:0;">
                             <span class="description-text" style="float:left;margin-left:10px;">
                                     <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                 </span>
                             <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                         </div>
                     </div>
                 </div>
                 <div class="list-box">
                     <div class="list-desc">
                         <img class="list-img" src="/static/images/ico_thema3.gif"/>
                         <div class="price-wrap">
                             <div class="price-desc" >
                                 <span class="price-tag PT01">매매</span>
                                 <span class="price-unit">억원</span>
                                 <span class="price">15</span>
                             </div>
                         </div>
                         <div class="address-wrap">
                             <span>서울 송파구 가락동</span>
                             <div class="separator"></div>
                             <span>아파트</span>
                         </div>
                         <div class="title-wrap">
                             <span>헬리오시티 213동</span>
                             <div class="tag best">인기매물</div>
                         </div>
                         <div class="description" style="top:0;">
                             <span class="description-text" style="float:left;margin-left:10px;">
                                     <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                 </span>
                             <img src="/static/images/calculator.png" onclick="fnCalc(this)" style="float:left;margin-left:10px;"/>
                         </div>
                     </div>
                 </div>
            </div>
        </div>
    </div>
</body>
</html>