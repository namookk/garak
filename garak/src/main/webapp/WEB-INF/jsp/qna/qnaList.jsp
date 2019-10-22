<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<style>
	.main-wrap .board-wrap{width:100%;min-width:1100px;height:auto;min-height:600px;}
	.main-wrap .board-wrap .title{font-size:36px;font-weight:bold;min-width:1050px;width:80%;padding:30px 0;border-bottom:1px solid #bdbdbd;text-align:center;display:inline-block;}
	.main-wrap .board-wrap .search-wrap{width:80%;min-width:1050px;text-align:left;display:inline-block;padding:10px 0;}
	.main-wrap .board-wrap .search-wrap select{width:100px;padding:5px 0;font-size:16px;}
	.main-wrap .board-wrap .search-wrap .search-text{width:200px;padding:5px 10px;font-size:16px;}
	.main-wrap .board-wrap .search-wrap .search-btn{width:100px;padding:7px 0px;font-weight:bold;text-align:center;color:#fff;background-color:#8a8a8a;border:0;font-size:15px;}
	.main-wrap .board-wrap .search-wrap .search-btn:hover{cursor:pointer;background-color:red;}
	.main-wrap .board-wrap .search-wrap .write-btn{width:100px;padding:7px 0px;font-weight:bold;text-align:center;color:#fff;background-color:#8a8a8a;border:0;float:right;margin-right:10px;font-size:15px;}
	.main-wrap .board-wrap .search-wrap .write-btn:hover{cursor:pointer;background-color:red;}
	.main-wrap .board-wrap .board-table-wrap{display:inline-block;width:80%;min-width:1050px;}
	.main-wrap .board-wrap .board-table-wrap .board-table{width:100%;border-collapse: collapse;}
	.main-wrap .board-wrap .board-table-wrap .board-table thead tr{background-color:#8a8a8a;color:#fff;height:40px;font-size:16px;font-weight:bold;}
	.main-wrap .board-wrap .board-table-wrap .board-table tbody tr{border-bottom:1px solid #8a8a8a;font-size:16px;height:35px;}
	.main-wrap .board-wrap .board-table-wrap .board-table tbody tr td a{color:black;text-decoration: none;}
	.main-wrap .board-wrap .board-table-wrap .board-table tbody tr td a:hover{text-decoration: underline;}
	.main-wrap .board-wrap .paging-wrap{width:80%;min-width:1050px;display:inline-block;font-size:13px;line-height: 20px;margin-top:15px;}
	.main-wrap .board-wrap .paging-wrap strong{display: inline-block;width: 20px;height: 20px;text-align: center;vertical-align: top;color: #fff;background: red;border-radius: 50%;}
	.paging-wrap a.first, .paging-wrap a.prev, .paging-wrap a.next, .paging-wrap a.last {margin: 0 10px;margin-top:2px;}
	.paging-wrap a{display: inline-block;height: 20px;margin: 0 7px;vertical-align: top;color:black;text-decoration: none;}
</style>
</head>
<body>
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
    	<div class="main-wrap">
           <div class="board-wrap">
                <div class="title">질문과 답변</div>
                <div class="search-wrap">
                    <select>
                            <option>제목</option>
                            <option>작성자</option>
                    </select>
                    <input type="text" class="search-text" placeholder="검색어를 입력하세요."/>
                    <input type="button" class="search-btn" value="검색"/>
                    <input type="button" class="write-btn" value="글쓰기" onclick="window.location='qnaWrite.html'"/>
                </div>
                <div class="board-table-wrap">
                    <table class="board-table">
                        <colgroup>
                            <col width="7%"/>
                            <col width="*"/>
                            <col width="15%"/>
                            <col width="20%"/>
                            <col width="7%"/>
                        </colgroup>
                        <thead>
                            <tr>
                                <td>No.</td>
                                <td>제목</td>
                                <td>작성자</td>
                                <td>등록일</td>
                                <td>조회수</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><a href="qnaPwd.html">일요일에 찾아뵈도 될까요?</a></td>
                                <td>황*욱</td>
                                <td>19.10.21</td>
                                <td>0</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="paging-wrap">
                    <a href="#" class="first"><img src="/static/images/paging_first.gif"/></a>
                    <a href="#"class="prev"><img src="/static/images/paging_prev.gif"/></a>
                    <strong>
                        <span class="current">1</span>
                    </strong>
                    <a href="#" >2</a>
                    <a href="#" class="next"><img src="/static/images/paging_next.gif"/></a>
                    <a href="#" class="last"><img src="/static/images/paging_last.gif"/></a>
                </div>
           </div>
		</div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>