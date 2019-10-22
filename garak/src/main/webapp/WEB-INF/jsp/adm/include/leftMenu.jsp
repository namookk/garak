<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<script>
$(document).ready(function(){
    $(".sub-depth-wrap > li > a").on('mouseover focusin',function(){
        $('.wrap .left-menu .sub-depth-wrap li a').removeClass("on");
        $(this).addClass("on");
        $(".wrap .left-menu .sub-depth-wrap li .sub-depth-box").removeClass("on");
        $(this).siblings("div").addClass("on");
    });

    $(".sub-depth-wrap li a").on('mouseleave',function(){
        $('.wrap .left-menu .sub-depth-wrap li a').removeClass("on");
        $(".wrap .left-menu .sub-depth-wrap li .sub-depth-box").removeClass("on");
    });

   $(".sub-depth-wrap > li > a").on("click",function(){
       $('.sub-depth-wrap > li > a').removeClass("active");
       $(this).addClass("active");
       $('.sub-depth-wrap > li > div').removeClass("active");
       $(this).siblings("div").addClass("active");

       var menuCd = $(this).attr("id");
       var menuNm = $(this).html();
       if($('#tab-'+menuCd).length > 0){     //이미 탭이 열려있음
           $('.tab > ul > li').removeClass("on");
           $('#tab-'+menuCd).addClass("on");
           $('.content-wrap').removeClass("on");
           $('#content-'+menuCd).addClass("on");
       }else{                               //탭이 안열려있음
        $('.tab > ul > li').removeClass("on");
        var html ='<div class="content-wrap on" id="content-'+menuCd+'">';
        html += '<!DOCTYPE html>';
        html += '    <html>';
        html += '    <head>';
        html += '    </head>';
        html += '    <body>';
        html +=         menuCd;
        html += '    </body>';
        html += '    </html>';
        html += ' </div>';
        $('.content-wrap').removeClass("on");
        $('.main').append(html);
        html = ' <li id="tab-'+menuCd+'" class="on" onclick="fnOpen(\''+menuCd+'\');">'+menuNm+'<span class="xBtn" onclick="fnClose(\''+menuCd+'\')">x</span></li>';
        $('.tab > ul').append(html);
       }
   });
});
function fnOpen(menuCd){
    
    if($('#tab-'+menuCd).length > 0){
        $('.tab > ul > li').removeClass("on");
        $('#tab-'+menuCd).addClass("on");
        $('.content-wrap').removeClass("on");
        $('#content-'+menuCd).addClass("on");
    }
}
function fnClose(menuCd){
    if($('#tab-'+menuCd).hasClass("on")){
        $('.tab > ul > li').removeClass("on");
        $('#tab-'+menuCd).remove();
        $('.tab > ul > li:nth-child(1)').addClass("on");
        $('.content-wrap').removeClass("on");
        $('#content-'+menuCd).remove();
        $('.content-wrap:nth-child(1)').addClass("on");
    }else{
        $('#tab-'+menuCd).remove();
        $('#content-'+menuCd).remove();
    }
}

</script>
</head>
<body>
	<div class="left-menu">
            <p class="sub-title"><a>매물관리</a></p>
            <ul class="sub-depth-wrap">
                <li>
                    <a class="active" id="AA0101">매물리스트</a>
                    <div class="sub-depth-box active"></div>
                </li>
                <li>
                    <a id="AA0102">매물등록</a>
                    <div class="sub-depth-box"></div>
                </li>
                <li>
                    <a id="AA0103">매물일괄등록</a>
                    <div class="sub-depth-box"></div>
                </li>
            </ul>
            <p class="sub-title"><a>태그관리</a></p>
            <ul class="sub-depth-wrap">
                <li>
                    <a id="AA0201">추천매물리스트</a>
                    <div class="sub-depth-box"></div>
                </li>
                <li>
                    <a id="AA0202">인기매물리스트</a>
                    <div class="sub-depth-box"></div>
                </li>
            </ul>
        </div>
</body>
</html>