<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<style>
   .main-wrap .bird-wrap{width:1100px;min-height:600px;background-color:#fff;display:inline-block;}
   .main-wrap .bird-wrap .bird-desc{width:100%;height:600px;}
   .main-wrap .bird-wrap .bird-desc .bird-img{width:50%;height:100%;float:left;opacity:0;position:relative;top:100px;}
   .main-wrap .bird-wrap .bird-desc .bird-img img{width:100%;margin-top:100px;}
   .main-wrap .bird-wrap .bird-desc .bird-text{width:50%;height:100%;float:left;opacity:0;position:relative;top:100px;text-align:center;display:flex;justify-content: center;align-items: center;flex-direction: column;}
   .main-wrap .bird-wrap .bird-desc .bird-text span{color:#5c5c5c;font-size:14px;font-weight:bold;}
   .main-wrap .bird-wrap .bird-desc .bird-text .title{font-size:25px;color:black;}
   .main-wrap .bird-wrap .bird-desc .bird-text .title span{color:red;font-size:25px;}
</style>
<script>
    $(document).ready(function() {
    	
        $(window).on("scroll",function(){
        var sct = $(window).scrollTop();
        var bird1Top = $('#bird1').offset().top - 500;
        var bird2Top = $('#bird2').offset().top - 500;
        var bird3Top = $('#bird3').offset().top - 500;
        var bird4Top = $('#bird4').offset().top - 500;
        var bird5Top = $('#bird5').offset().top - 500;
        var bird6Top = $('#bird6').offset().top - 500;

        if(sct >= bird1Top && sct < bird2Top){
            $("#bird1_1").animate({"opacity":"1","top":"0"},500,function(){
                $("#bird1_2").animate({"opacity":"1","top":"0"},500);
            });
        }
        if(sct >= bird2Top && sct < bird3Top){
            $("#bird2_2").animate({"opacity":"1","top":"0"},500,function(){
                $("#bird2_1").animate({"opacity":"1","top":"0"},500);
            });
        }
        if(sct >=bird3Top && sct < bird4Top){
            $("#bird3_1").animate({"opacity":"1","top":"0"},500,function(){
                $("#bird3_2").animate({"opacity":"1","top":"0"},500);
            });
        }
        if(sct >=bird4Top && sct < bird5Top){
            $("#bird4_2").animate({"opacity":"1","top":"0"},500,function(){
                $("#bird4_1").animate({"opacity":"1","top":"0"},500);
            });
        }
        if(sct >=bird5Top && sct < bird6Top){
            $("#bird5_1").animate({"opacity":"1","top":"0"},500,function(){
                $("#bird5_2").animate({"opacity":"1","top":"0"},500);
            });
        }
        if(sct >= bird6Top){
            $("#bird6_2").animate({"opacity":"1","top":"0"},500,function(){
                $("#bird6_1").animate({"opacity":"1","top":"0"},500);
            });
        }
    });
        show();
     function show(){
        $("#desc1").animate({"opacity":"1","left":"0px"},1500,function(){
                $("#desc2").animate({"opacity":"1","left":"0px"},1500,function(){
                });
            });
            setTimeout(function(){
                $("#desc1").animate({"opacity":"0","left":"-100px"},500);
                $("#desc2").animate({"opacity":"0","left":"-100px"},500);
            },5000);
        setInterval(function(){
            $("#desc1").animate({"opacity":"1","left":"0px"},1500,function(){
                $("#desc2").animate({"opacity":"1","left":"0px"},1500,function(){
                });
            });
            setTimeout(function(){
                $("#desc1").animate({"opacity":"0","left":"-100px"},500);
                $("#desc2").animate({"opacity":"0","left":"-100px"},500);
            },5000);
        },7000);
        }
    
    });
    </script>
   
</head>
<body>
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
   		<div class="main-visual" style="background-image:url(/static/images/bird/bg.jpg);background-size:100% 850px;height:850px;">
            <div class="main-visual-txt">
                <div style="text-align:left;">
                    <span class="desc" id="desc1">HELIO CITY</span><br/>
                    <span class="desc" id="desc2">PREMIUM APARTMENT</span>
                </div>
            </div>
        </div>
        <div class="main-wrap">
            <div class="bird-wrap">
                <div class="bird-desc" id="bird1">
                    <div class="bird-img" id="bird1_1">
                        <img src="/static/images/bird/bird_1.jpg">
                    </div>
                    <div class="bird-text" id="bird1_2">
                        <span class="title">한 발 더 먼저 만나보세요!<br>지구를 아끼는 <span>친환경의 모든 기술</span></span><br/>
                        <span>친환경 스마트 기술로 관리비는 줄고 지구는 아껴줍니다.<br/>
                            아파트 곳곳에서 쓰여지는 태양과 빗물까지 에너지 절감 아파트를 넘어 <br/>생태 아파트로 거듭납니다.
                        </span>
                    </div>
                </div>
                <div class="bird-desc" id="bird2">
                    <div class="bird-text" id="bird2_1">
                        <span class="title"><span>단열재</span>사용</span><br/>
                        <span>친환경 주택성능평가를 만족하는 단열재 적용
                        </span>       
                    </div>
                    <div class="bird-img" id="bird2_2">
                        <img src="/static/images/bird/bird_2.jpg">
                    </div>
                </div>
                <div class="bird-desc" id="bird3">
                    <div class="bird-img" id="bird3_1">
                            <img src="/static/images/bird/bird_3.jpg">
                    </div>
                    <div class="bird-text" id="bird3_2">
                        <span class="title"><span>신재생에너지</span>활용</span><br/>
                        <span>태양광 적용으로 CO<sub>2</sub>절감 및 화석연료 절약
                        </span>                   
                     </div>
                </div>
                <div class="bird-desc" id="bird4">
                    <div class="bird-text" id="bird4_1">
                        <span class="title"><span>친환경</span>자재 및 시설</span><br/>
                        <span>유해물질 차단, 실내공기질의 개선으로 더 건강한 삶
                        </span>       
                    </div>
                    <div class="bird-img" id="bird4_2">
                        <img src="/static/images/bird/bird_4.jpg">
                    </div>
                </div>
                <div class="bird-desc" id="bird5">
                    <div class="bird-img" id="bird5_1">
                        <img src="/static/images/bird/bird_5.jpg">
                    </div>
                    <div class="bird-text" id="bird5_2">
                        <span class="title"><span>빗물 재처리</span>설비 시스템</span><br/>
                        <span>우수를 조경용수 등으로 활용, 수자원 절감 및 홍수대비
                        </span>       
                    </div>
                </div>
                <div class="bird-desc" id="bird6">
                    <div class="bird-text" id="bird6_1">
                            <span class="title"><span>에너지</span>절전 조명</span><br/>
                            <span>감지센서 조명을 계단실, 세대 현관 등에 설치
                            </span>       
                    </div>
                    <div class="bird-img" id="bird6_2">
                        <img src="/static/images/bird/bird_6.jpg">
                    </div>
                </div>
            </div>
        </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>