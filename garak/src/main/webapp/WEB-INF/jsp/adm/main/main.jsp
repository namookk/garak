<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<script>
$(document).ready(function(){
	$.ajax({
		url : "/adm/main/tab",
		dataType : "HTML",
		type: "POST",
		success:function(html){
			$('#content-main').html(html);
		},
		error : function(e){
			alert("error");
		}
	});
});
</script>
</head>
<body>
<div class="wrap">
<jsp:include page="../include/header.jsp"></jsp:include>
<jsp:include page="../include/leftMenu.jsp"></jsp:include>
        <div class="main-wrap">
            <div class="tab">
                <ul>
                    <li id="tab-main" class="on" onclick="fnOpen('main');">메인</li>
                </ul>
            </div>
            <div class="main">
                <div class="content-wrap on" id="content-main">
                </div>
       		 </div>
   		 </div>
    </div>
</body>
</html>