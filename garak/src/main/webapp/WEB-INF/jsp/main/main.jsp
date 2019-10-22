<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
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
    });
</script>
    <script>
    $(document).ready(function() {
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
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
        <div class="main-visual">
            <div class="main-visual-txt">
                <div style="text-align:left;">
                    <span class="desc" id="desc1">HELIO CITY</span><br/>
                    <span class="desc" id="desc2">PREMIUM APARTMENT</span>
                </div>
            </div>
        </div>
        <div class="main-wrap">
            <div class="Theme">
                <span class="Theme-desc">
                    <select class="search-select">
                        <option>매물번호</option>
                        <option>제목</option>
                        <option>지역</option>
                    </select> 
                    <input type="text" class="search-input" placeholder="매물번호,제목,지역 등을 입력해주세요."/>
                    <span class="btntype1"><a>검색</a></span>
                </span>
                <br/><br/><br/>
                <div class="Theme-box" style="background-image:url('/static/images/ico_thema2.gif')">
                    <div class="Theme-box-desc">원룸형</div>
                </div>
                <div class="Theme-box"  style="background-image:url('/static/images/ico_thema1.gif')">
                    <div class="Theme-box-desc">보증금 1,000만원 이하</div>
                </div>
                <div class="Theme-box"  style="background-image:url('/static/images/ico_thema3.gif')">
                    <div class="Theme-box-desc">전세 2억 이하</div>
                </div>
                <div class="Theme-box"  style="background-image:url('/static/images/ico_thema4.gif')">
                    <div class="Theme-box-desc">역세권 인접</div>
                </div>
                <div class="Theme-box"  style="background-image:url('/static/images/ico_thema6.gif')">
                    <div class="Theme-box-desc">통베란다</div>
                </div>
                <div class="Theme-box"  style="background-image:url('/static/images/ico_thema5.gif')">
                    <div class="Theme-box-desc">오피스텔</div>
                </div>
                <div class="Theme-box"  style="background-image:url('/static/images/ico_thema7.gif')">
                    <div class="Theme-box-desc">풀옵션</div>
                </div>
                <div class="Theme-box"  style="background-image:url('/static/images/ico_thema8.gif')">
                    <div class="Theme-box-desc">학교인접</div>
                </div>
            </div>
            <div class="recent-board">
                <div class="recent-desc">최근 <span>업데이트</span> 매물</div>
                <br/><br/><br/>
                <div class="recent-wrap">
                    <div class="recent-box">
                        <div class="tag-wrap">
                            <div class="tag new">최신매물</div>
                            <div class="tag recommand">추천매물</div>
                        </div>
                        <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                        <div class="title">헬리오시티</div>
                        <div class="description"> 
                            <span class="description-text">
                                <span class="address">송파동</span>
                                <span>|</span>
                                <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                            </span>
                            <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                        </div>
                        <div class="price-wrap">
                            <div class="price-desc">
                                <span class="price-tag PT01">매매</span>
                                <span class="price-unit">억원</span>
                                <span class="price">15</span>
                            </div>
                        </div>
                    </div>
                    <div class="recent-box">
                        <div class="tag-wrap">
                            <div class="tag new">최신매물</div>
                            <div class="tag subway">역세권</div>
                        </div>
                        <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                        <div class="title">헬리오시티</div>
                        <div class="description">
                            <span class="description-text">
                                <span class="address">송파동</span>
                                <span>|</span>
                                <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                            </span>
                            <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                        </div>
                        <div class="price-wrap">
                            <div class="price-desc">
                                <span class="price-tag PT02">보증금</span>
                                <span class="price-unit">만원</span>
                                <span class="price">1,000</span>
                            </div>
                            <div class="price-desc">
                                <span class="price-tag PT03">임대료</span>
                                <span class="price-unit">만원</span>
                                <span class="price">49</span>
                            </div>
                        </div>
                    </div>
                    <div class="recent-box">
                        <div class="tag-wrap">
                            <div class="tag new">최신매물</div>
                            <div class="tag best">인기매물</div>
                        </div>
                        <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                        <div class="title">헬리오시티</div>
                        <div class="description">
                            <span class="description-text">
                                 <span class="address">송파동</span>
                                 <span>|</span>
                                 <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                             </span>
                            <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                        </div>
                        <div class="price-wrap">
                            <div class="price-desc">
                                <span class="price-tag PT04">전세금</span>
                                <span class="price-unit">억원</span>
                                <span class="price">7</span>
                            </div>
                        </div>
                    </div>
                    <div class="recent-box">
                        <div class="tag-wrap">
                            <div class="tag new">최신매물</div>
                             <div class="tag best">인기매물</div>
                        </div>
                        <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                        <div class="title">헬리오시티</div>
                        <div class="description">
                            <span class="description-text">
                                <span class="address">송파동</span>
                                <span>|</span>
                                <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                            </span>
                            <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                        </div>
                        <div class="price-wrap">
                            <div class="price-desc">
                                <span class="price-tag PT04">전세금</span>
                                <span class="price-unit">억원</span>
                                <span class="price">6</span>
                            </div>
                        </div>
                    </div>

                    <div class="recent-box">
                            <div class="tag-wrap">
                                <div class="tag new">최신매물</div>
                                <div class="tag recommand">추천매물</div>
                            </div>
                            <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                            <div class="title">헬리오시티</div>
                            <div class="description"> 
                                <span class="description-text">
                                    <span class="address">송파동</span>
                                    <span>|</span>
                                    <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                </span>
                                <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                            </div>
                            <div class="price-wrap">
                                <div class="price-desc">
                                    <span class="price-tag PT01">매매</span>
                                    <span class="price-unit">억원</span>
                                    <span class="price">15</span>
                                </div>
                            </div>
                        </div>
                        <div class="recent-box">
                            <div class="tag-wrap">
                                <div class="tag new">최신매물</div>
                                <div class="tag subway">역세권</div>
                            </div>
                            <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                            <div class="title">헬리오시티</div>
                            <div class="description">
                                <span class="description-text">
                                    <span class="address">송파동</span>
                                    <span>|</span>
                                    <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                </span>
                                <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                            </div>
                            <div class="price-wrap">
                                <div class="price-desc">
                                    <span class="price-tag PT02">보증금</span>
                                    <span class="price-unit">만원</span>
                                    <span class="price">1,000</span>
                                </div>
                                <div class="price-desc">
                                    <span class="price-tag PT03">임대료</span>
                                    <span class="price-unit">만원</span>
                                    <span class="price">49</span>
                                </div>
                            </div>
                        </div>
                        <div class="recent-box">
                            <div class="tag-wrap">
                                <div class="tag new">최신매물</div>
                                <div class="tag best">인기매물</div>
                            </div>
                            <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                            <div class="title">헬리오시티</div>
                            <div class="description">
                                <span class="description-text">
                                     <span class="address">송파동</span>
                                     <span>|</span>
                                     <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                 </span>
                                <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                            </div>
                            <div class="price-wrap">
                                <div class="price-desc">
                                    <span class="price-tag PT04">전세금</span>
                                    <span class="price-unit">억원</span>
                                    <span class="price">7</span>
                                </div>
                            </div>
                        </div>
                        <div class="recent-box">
                            <div class="tag-wrap">
                                <div class="tag new">최신매물</div>
                                 <div class="tag best">인기매물</div>
                            </div>
                            <img class="recent-image" src="/static/images/ico_thema2.gif"/>
                            <div class="title">헬리오시티</div>
                            <div class="description">
                                <span class="description-text">
                                    <span class="address">송파동</span>
                                    <span>|</span>
                                    <span class="size"><span id="size-data" flag="1">138.38</span><span id="size-unit" flag="1">㎡</span></span>
                                </span>
                                <img src="/static/images/calculator.png" onclick="fnCalc(this)"/>
                            </div>
                            <div class="price-wrap">
                                <div class="price-desc">
                                    <span class="price-tag PT04">전세금</span>
                                    <span class="price-unit">억원</span>
                                    <span class="price">6</span>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>