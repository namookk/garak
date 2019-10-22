<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<style>
	.main-wrap .board-wrap{width:100%;min-width:1100px;height:auto;min-height:600px;}
	.main-wrap .board-wrap .title{font-size:36px;font-weight:bold;min-width:1050px;width:80%;padding:30px 0;border-bottom:1px solid #bdbdbd;text-align:center;display:inline-block;}
	.main-wrap .board-wrap .password-wrap{width:100%;min-width:1100px;height:auto;}
	.main-wrap .board-wrap .password-wrap .password-box{width:400px;height:200px;display:inline-block;border:1px solid #6a6a6a;margin-top:100px;border-top:2px solid #4c4c4c;text-align:center;}
	.main-wrap .board-wrap .password-wrap .password-box .password-title{font-size:16px;font-weight:bold;width:100%;padding:40px 0;border-bottom:1px solid #6a6a6a;}
	.main-wrap .board-wrap .password-wrap .password-box .password{width:100%;padding:35px 0;}
	.main-wrap .board-wrap .password-wrap .password-box .password .pwd{width:150px;padding:5px 5px;font-size:16px;}
	.main-wrap .board-wrap .password-wrap .password-box .password .pwd-btn{width:80px;padding:7px;text-align:center;font-size:16px;background-color:#6a6a6a;color:#fff;font-weight:bold;border:0;}
	.main-wrap .board-wrap .password-wrap .password-box .password .pwd-btn:hover{cursor:pointer;background-color:red;}
</style>
</head>
<body>
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
    	<div class="main-wrap">
           <div class="board-wrap">
                <div class="title">질문과 답변</div>
                <div class="password-wrap">
                    <div class="password-box">
                        <div class="password-title">비밀번호를 입력해주세요.</div>
                        <div class="password">
                            <input type="password" class="pwd"/>
                            <input type="button" class="pwd-btn" value="확인"/>
                        </div>
                    </div>
                </div>
           </div>
        </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>