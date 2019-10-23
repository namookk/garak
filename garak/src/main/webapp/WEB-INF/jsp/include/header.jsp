<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<script>
    $(document).ready(function() {
        $(".gnb > li > a").on('mouseover focusin',function(){
                $(".gnb > li").removeClass("on");
                $(this).parent("li").addClass("on");
                $(".submenu").hide();
			    $(this).next(".submenu").show();
        });

        $(".header, .gnb").on('mouseleave',function(){
                $(".gnb > li").removeClass("on");
                $(".submenu").hide();
        });
    });
</script>
</head>
<body>
	<div class="gnb-wrap">
         <div class="header">
             <div class="logo" onclick="window.location='/'">
                 <span class="logo1">가락</span>
                 <div class="logo2">명품</div>
                 <span class="logo3">공인중개사</span>
                 <span class="logo4">412-0090</span>
             </div>
             <ul class="gnb">
                 <li><a href="/product/list">아파트</a></li>
                 <li><a>상가</a></li>
                 <li><a>조감도/평면도</a>
                     <div class="submenu">
                         <ul style="width:120px;text-align:center;">
                             <li style="font-size:15px;padding:10px 0px;float:none;"><a href="/birdView/view">조감도</a></li>
                             <li style="font-size:15px;padding:10px 0px;float:none;"><a href="/floorView/view">평면도</a></li>
                         </ul>
                     </div>
                 </li>
                 <li><a>게시판</a>
                     <div class="submenu" style="margin-left:-45px;">
                         <ul style="width:150px;text-align:center;">
                             <li style="font-size:15px;padding:10px 0px;float:none;"><a >매도/매수의뢰</a></li>
                             <li style="font-size:15px;padding:10px 0px;float:none;" ><a href="/qna/list">질문과 답변</a></li>
                         </ul>
                     </div>
                 </li>
                 <li><a href="/introduce/view">찾아오는 길</a></li>
             </ul>
         </div>
     </div>
</body>
</html>