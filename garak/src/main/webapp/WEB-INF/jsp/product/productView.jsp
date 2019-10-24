<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=67zopzwnlj&submodules=geocoder"></script>
<style>
.wrap .view-bar{width:100%;min-width:1100px;height:120px;background-color:#fff;text-align:center;}
.wrap .view-bar .view-bar-desc{width:100%;min-width:1100px;display:inline-block;height:70px;border-top:1px solid #bdbdbd;border-bottom:1px solid #bdbdbd;}
.wrap .view-bar .view-bar-desc ul{width:1100px;height:100%;display:inline-block;list-style:none;text-align:left;}
.wrap .view-bar .view-bar-desc ul li{float:left;width:170px;padding-left:50px;}
.wrap .view-bar .view-bar-desc ul li:nth-child(5){padding:5px 0;padding-left:50px;font-size:18px;color:red;font-weight:bold;}
.wrap .view-bar .view-bar-desc ul li:nth-child(5) p{margin-top:5px;}
.wrap .view-bar .view-bar-desc ul li .title{font-size:14px;font-weight:lighter;padding:10px 0;}
.wrap .view-bar .view-bar-desc ul li .desc{font-size:17px;padding:2px 0;color:#4c4c4c;font-weight:bold;}
.wrap .view-bar .view-bar-menu{width:100%;min-width:1100px;display:inline-block;height:50px;border-bottom:1px solid #bdbdbd;text-align:center;}
.wrap .view-bar .view-bar-menu ul{width:1100px;height:100%;display:inline-block;list-style:none;}
.wrap .view-bar .view-bar-menu ul li{width:220px;padding:17px 0;font-size:14px;font-weight:bold;float:left;}
.wrap .view-bar .view-bar-menu ul li:hover{cursor:pointer;}
.wrap .view-bar .view-bar-menu ul li.on{border-bottom:2px solid red;}
.wrap .view-visual{width:1100px;height:600px;border:1px solid #bdbdbd;display:inline-block;margin-top:20px;}
.wrap .view-visual .main-image-wrap{width:800px;height:100%;background-color:black;float:left;}
.wrap .view-visual .main-image-wrap img{width:100%;height:100%}
.wrap .view-visual .sub-image-wrap{width:300px;height:100%;float:left;}
.wrap .view-visual .sub-image-wrap ul{width:100%;height:100%;list-style:none;}
.wrap .view-visual .sub-image-wrap ul li{width:100%;height:33.2%;border-bottom:1px solid #bdbdbd;}
.wrap .view-visual .sub-image-wrap ul li img{width:100%;height:100%}
.wrap .view-visual .sub-image-wrap ul li img:hover{cursor:pointer;}
.wrap .description{width:1100px;height:auto;min-height:300px;display:inline-block;margin-top:150px;}
.wrap .description .title{width:100%;font-size:25px;font-weight:bold;text-align:center;}
.wrap .description .view-tbl{width:100%;height:auto;border:1px solid #bdbdbd;border-collapse: collapse;border-top:2px solid #022873;margin-top:50px;}
.wrap .description .view-tbl .first-child{background-color:#022873;color:#fff;font-weight:bold;}
.wrap .description .view-tbl .td{width:100%;margin:10px 0;padding:4px 0;font-size:16px;}
.wrap .description .view-tbl .td .numberic{font-size:18px;font-weight:bold;color:#1198C5;}
.wrap .description .view-tbl thead tr td{text-align:left;font-size:23px;font-weight:bold;color:#022873;padding-left:20px;}
.wrap .description .view-tbl tbody tr{border-top:1px solid #bdbdbd;}
</style>
<script>
	$(document).ready(function(){ 
		
		var letitude = 37.497570;
	    var longtitude = 127.107304;
	    var vletitude = letitude;
	    var vlongtitude = longtitude;
	    
	    var mapOptions = {
	        center: new naver.maps.LatLng(vletitude, vlongtitude),
	        zoom: 11,
	        maxZoom:12,
	        minZoom:9
	    };
	
	    var map = new naver.maps.Map('map', mapOptions);
	    
	    var marker = new naver.maps.Marker({
	        position: new naver.maps.LatLng(letitude, longtitude),
	        map: map
	    });
		
	    
	    $('.wrap .view-visual .sub-image-wrap ul li img').on("click",function(){
	    	var src = $(this).attr("src");
	    	var mainSrc = $('.main-image-wrap img').attr("src");
	    	
	    	
	    	$('.main-image-wrap img').animate({'opacity':'0.7'},100,function(){
	    		$('.main-image-wrap img').attr("src",src);
    			$('.main-image-wrap img').animate({'opacity':'1'},100);
	    	});
	    	
	    	
	    	$(this).animate({'opacity':'0.7'},100,function(){
	    		$(this).attr("src",mainSrc);
    			$(this).animate({'opacity':'1'},100);
	    	});
	    	
	    });
	    
		 var sct = $(window).scrollTop();
	        if(sct >= 100){
	        	$('.view-bar').css({"position":"fixed","top":"0","z-index":"100"});
	        }else{
	        	$('.view-bar').css("position","relative");
	        }
	        
	    $('.view-bar-menu > ul > li').on("click",function(){
	    	var section = $(this).attr("section");
	    	var offset = $('.view-'+section).offset();
	    	$('html').animate({scrollTop : offset.top - 350}, 400);
	    })
		$(window).on("scroll",function(){
		    var sct = $(window).scrollTop();
		    var optionOffset = $('.view-option-desc').offset();
	        var priceOffset = $('.view-price-desc').offset();
	        var productOffset = $('.view-product-desc').offset();
	        var developmentOffset = $('.view-development-desc').offset();
	        
	        if(sct >= 100){
	        	$('.view-bar').css({"position":"fixed","top":"0","z-index":"100"});
	        }else{
	        	$('.view-bar').css("position","relative");
	        }
	        
	        if(sct <= 100){
	        	$('.view-bar-menu > ul > li').removeClass("on");
	        	$('.view-bar-menu > ul > li:nth-child(1)').addClass("on");
	        }else if(sct > productOffset.top - 400 & sct <= priceOffset.top - 400){
	        	$('.view-bar-menu > ul > li').removeClass("on");
	        	$('.view-bar-menu > ul > li:nth-child(2)').addClass("on");
	        }else if(sct > priceOffset.top - 400 & sct <= optionOffset.top - 400){
	        	$('.view-bar-menu > ul > li').removeClass("on");
	        	$('.view-bar-menu > ul > li:nth-child(3)').addClass("on");
	        }else if(sct > optionOffset.top - 400 & sct <= developmentOffset.top - 400){
	        	$('.view-bar-menu > ul > li').removeClass("on");
	        	$('.view-bar-menu > ul > li:nth-child(4)').addClass("on");
	        }else if(sct > developmentOffset.top - 400){
	        	$('.view-bar-menu > ul > li').removeClass("on");
	        	$('.view-bar-menu > ul > li:nth-child(5)').addClass("on");
	        } 
		});
	});
</script>
</head>
<body>
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
    	<div class="view-bar">
    		<div class="view-bar-desc">
    			<ul>
    				<li>
    					<p class="title">매물번호</p>
    					<p class="desc">10001</p>
    				</li>
    				<li>
    					<p class="title">평 수</p>
    					<p class="desc">138.38m<sup style="font-size:5px;">2</sup></p>
    				</li>
    				<li>
    					<p class="title">아파트</p>
    					<p class="desc">매매 17억</p>
    				</li>
    				<li>
    					<p class="title">평당 가격</p>
    					<p class="desc">5,344만원 / 3.3m<sup style="font-size:5px;">2</sup></p>
    				</li>
    				<li>
    					<p>02-412-0090</p>
    					<p>010-0000-0000</p>
    				</li>
    			</ul>
    		</div>
    		<div class="view-bar-menu">
    			<ul>
    				<li class="on" section="visual">사진정보</li>
    				<li section="product-desc">매물정보</li>
    				<li section="price-desc">가격정보</li>
    				<li section="option-desc">옵션정보</li>
    				<li section="development-desc">단지정보</li>
    			</ul>
    		</div>
    	</div>
    	<div class="view-visual">
    		<div class="main-image-wrap">
    			<img src="/static/upload/product/10001_1.png"/>
    		</div>
    		<div class="sub-image-wrap">
    			<ul>
    				<li>
    					<img src="/static/upload/product/10001_2.png"/>
    				</li>
    				<li>
    					<img src="/static/upload/product/10001_1.png"/>
    				</li>
    				<li>
    					<img src="/static/upload/product/10001_2.png"/>
    				</li>
    			</ul>
    		</div>
    	</div>
    	<div class="view-product-desc description">
    		<p class="title">매물정보</p>
    		<table class="view-tbl">
    			<colgroup>
    				<col width="13%"/><col width="23%"/><col width="10%"/><col width="23%"/><col width="10%"/><col width="*"/>
    			</colgroup>
    			<thead>
    				<tr>
    					<td colspan="6"><div class="td">헬리오시티</div></td>
    				</tr>
    			</thead>
    			<tbody>
    				<tr>
    					<td class="first-child"><div class="td">매물번호</div></td>
    					<td><div class="td">10001</div></td>
    					<td class="first-child"><div class="td">주소</div></td>
    					<td colspan="3"><div class="td">서울특별시 송파구 송파대로 345</div></td>
    				</tr>
    				<tr>
    					<td class="first-child"><div class="td">층</div></td>
    					<td><div class="td"><span class="numberic">13</span> / <span class="numberic">25</span> 층</div></td>
    					<td class="first-child"><div class="td">면적</div></td>
    					<td><div class="td"><span class="numberic">110</span> / <span class="numberic">84</span> <small>(공급/전용)</small></div></td>
    					<td class="first-child"><div class="td">방</div></td>
    					<td><div class="td"><span class="numberic">3</span> / <span class="numberic">2</span> <small>(방/욕실)</small></div></td>
    				</tr>
    				<tr>
    					<td class="first-child"><div class="td">총 주차대수</div></td>
    					<td><div class="td"><span class="numberic">12456</span> 대</div></td>
    					<td class="first-child"><div class="td">해당<br/>면적세대수</div></td>
    					<td><div class="td"><span class="numberic">1480</span> 세대</div></td>
    					<td class="first-child"><div class="td">난방</div></td>
    					<td><div class="td">지역난방 / 열병합 <small>(방식/연료)</small></div></td>
    				</tr>
    				<tr>
    					<td class="first-child"><div class="td">현관구조</div></td>
    					<td><div class="td">계단식</div></td>
    					<td class="first-child"><div class="td">입주가능일</div></td>
    					<td><div class="td"><span class="numberic">즉시입주</span></div></td>
    					<td class="first-child"><div class="td">준공년월</div></td>
    					<td><div class="td">2018년 11월</div></td>
    				</tr>
    			</tbody>
    		</table>
    	</div>
    	<div class="view-price-desc description">
    		<p class="title">가격정보</p>
    		<table class="view-tbl">
    			<colgroup>
    				<col width="13%"/><col width="23%"/><col width="10%"/><col width="23%"/><col width="10%"/><col width="*"/>
    			</colgroup>
    			<tbody>
    				<tr>
    					<td class="first-child"><div class="td">가격</div></td>
    					<td><div class="td"><span class="numberic">17</span> 억원</div></td>
    					<td class="first-child"><div class="td">평 당 가격</div></td>
    					<td><div class="td"><span class="numberic">5,344</span> 만원 / 3.3m<sup style="font-size:5px;">2</sup></div></td>
    					<td class="first-child"><div class="td">융자금</div></td>
    					<td><div class="td"><span class="numberic">-</span></div></td>
    				</tr>
    			</tbody>
    		</table>
    	</div>
    	<div class="view-option-desc description">
    		<p class="title">옵션정보</p>
    	</div>
    	<div class="view-development-desc description">
    		<p class="title">단지정보</p>
    		<table class="view-tbl">
    			<colgroup>
    				<col width="13%"/><col width="23%"/><col width="10%"/><col width="23%"/><col width="10%"/><col width="*"/>
    			</colgroup>
    			<thead>
    				<tr>
    					<td colspan="6"><div class="td">헬리오시티</div></td>
    				</tr>
    			</thead>
    			<tbody>
    				<tr>
    					<td class="first-child"><div class="td">총 세대 수</div></td>
    					<td><div class="td"><span class="numberic">9,510</span> 세대</div></td>
    					<td class="first-child"><div class="td">주소</div></td>
    					<td colspan="3"><div class="td">서울특별시 송파구 송파대로 345</div></td>
    				</tr>
    				<tr>
    					<td class="first-child"><div class="td">최저층</div></td>
    					<td><div class="td"><span class="numberic">10</span> 층</div></td>
    					<td class="first-child"><div class="td">최고층</div></td>
    					<td><div class="td"><span class="numberic">35</span> 층</div></td>
    					<td class="first-child"><div class="td">준공년월</div></td>
    					<td><div class="td">2018년 11월</div></td>
    				</tr>
    				<tr>
    					<td class="first-child"><div class="td">세대당<br/>주차대수</div></td>
    					<td><div class="td"><span class="numberic">1.3</span> 대</div></td>
    					<td class="first-child"><div class="td">용적률</div></td>
    					<td><div class="td"><span class="numberic">285</span></div></td>
    					<td class="first-child"><div class="td">건폐률</div></td>
    					<td><div class="td"><span class="numberic">19</span></div></td>
    				</tr>
    				<tr>
    					<td class="first-child"><div class="td">건설사</div></td>
    					<td colspan="5"><div class="td">현대산업개발, 현대건설, 삼성물산</div></td>
    				</tr>
    			</tbody>
    		</table>
    	</div>
    	<div class="description" id="map" style="height:500px;margin-bottom:50px;">
    	</div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>