<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<div class="wrap">
<jsp:include page="../include/header.jsp"></jsp:include>
<jsp:include page="../include/leftMenu.jsp"></jsp:include>
        <div class="main-wrap">
            <div class="tab">
                <ul>
                    <li id="tab-main" class="on" onclick="fnOpen('main');">메인</li>
                    <li id="tab-AA0101"  onclick="fnOpen('AA0101');">매물리스트<span class="xBtn" onclick="fnClose('AA0101')">x</span></li>
                    <li id="tab-AA0102"  onclick="fnOpen('AA0102');">매물등록<span class="xBtn" onclick="fnClose('AA0102')">x</span></li>
                    <li id="tab-AA0103"  onclick="fnOpen('AA0103');">매물일괄등록<span class="xBtn" onclick="fnClose('AA0103')">x</span></li>
                </ul>
            </div>
            <div class="main">
                <div class="content-wrap on" id="content-main">
                    <!DOCTYPE html>
                    <html>
                    <head>
                    </head>
                    <body>
                        <div style="height:1100px;">메인</div>
                    </body>
                    </html>
                </div>
                <div class="content-wrap" id="content-AA0101">
                    <!DOCTYPE html>
                    <html>
                    <head>
                    </head>
                    <body>
                        AA0101
                    </body>
                    </html>
                </div>
                <div class="content-wrap" id="content-AA0102">
                    <!DOCTYPE html>
                    <html>
                    <head>
                    </head>
                    <body>
                        AA0102
                    </body>
                    </html>
                </div>
                <div class="content-wrap" id="content-AA0103">
                    <!DOCTYPE html>
                    <html>
                    <head>
                    </head>
                    <body>
                        AA0103
                    </body>
                    </html>
                </div>
        </div>
    </div>
    </div>
</body>
</html>