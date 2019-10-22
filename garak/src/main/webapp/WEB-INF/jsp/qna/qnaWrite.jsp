<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<style>
	.main-wrap .board-wrap{width:100%;min-width:1100px;height:auto;min-height:600px;}
	.main-wrap .board-wrap .title{font-size:36px;font-weight:bold;min-width:1050px;width:80%;padding:30px 0;border-bottom:1px solid #bdbdbd;text-align:center;display:inline-block;}
	.main-wrap .board-wrap .write-wrap{width:80%;height:300px;min-width:1050px;display:inline-block;}
	.main-wrap .board-wrap .write-wrap .write-table{width:100%;height:auto;margin-top:20px;border:1px solid #6a6a6a;text-align:left;border-collapse: collapse;}
	.main-wrap .board-wrap .write-wrap .write-table .first-child{text-align:center;background-color:#6a6a6a;color:#fff;font-weight:bold;}
	.main-wrap .board-wrap .write-wrap .write-table tr{border-bottom:1px solid #bdbdbd;}
	.main-wrap .board-wrap .write-wrap .write-table .td{width:90%;padding:5px 5px;}
	.main-wrap .board-wrap .write-wrap .write-table .td .write-inpt{width:50%;min-width:300px;padding:10px 10px;}
</style>
<script type="text/javascript" src="/static/slick/slick.min.js"></script>
<link rel="stylesheet" href="/static/editor/bootstrap.css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/static/editor/summernote.css" rel="stylesheet">
<script src="/static/editor/summernote.js"></script>
<!-- summer note korean language pack -->
<script src="/static/editor/lang/summernote-ko-KR.js"></script>
<script>
    $(document).ready(function() {
        $(".summernote").summernote({
    		height: 300,          // 기본 높이값
    		minHeight: null,      // 최소 높이값(null은 제한 없음)
    		maxHeight: 300,      // 최대 높이값(null은 제한 없음)
    		toolbar: [
    		    ['style', ['style']],
    		    ['font', ['bold', 'italic', 'underline', 'clear']],
    		    ['fontname', ['fontname']],
    		    ['color', ['color']],
    		    ['para', ['ul', 'ol', 'paragraph']],
    		    ['height', ['height']],
    		    ['table', ['table']],
    		    ['insert', ['link', 'picture', 'hr']],
    		    ['view', ['fullscreen', 'codeview']],
    		    ['help', ['help']]
    		  ],		
    		focus: false,          // 페이지가 열릴때 포커스를 지정함
    		//lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
    		
    		callbacks: {

    	   		onImageUpload: function(image) {

    	   		}

    	   }
    		
        });
    	
    	$(".summernote").hide();	
    });
    </script>
</head>
<body>
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
    	<div class="main-wrap">
           <div class="board-wrap">
                <div class="title">질문과 답변</div>
                <div class="write-wrap">
                    <table class="write-table">
                        <colgroup>
                            <col width="20%"/>
                            <col/>
                            <col width="20%"/>
                            <col/>
                        </colgroup>
                        <tbody>
                            <tr>
                                <td class="first-child"><div class="td">이름</div></td>
                                <td><div class="td"><input type="text" class="write-inpt" name="username" placeholder="아이디" autocomplete="off"/></div></td>
                                <td class="first-child"><div class="td">비밀번호</div></td>
                                <td><div class="td"><input type="password" class="write-inpt" name="userpassword" autocomplete="off"/></div></td>
                            </tr>
                             <tr>
                                <td class="first-child"><div class="td">제목</div></td>
                                <td colspan="3"><div class="td"><input type="text" class="write-inpt" name="title" placeholder="제목" autocomplete="off"/></div></td>
                            </tr>
                            <tr>
                                <td class="first-child"><div class="td">내용</div></td>
                                <td colspan="3"><div class="td">
                                	<textarea class="summernote"></textarea>
                                </div></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
           </div>
        </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>