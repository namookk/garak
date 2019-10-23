<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	$(document).ready(function(){
		$.datepicker.setDefaults($.datepicker.regional["ko"]);
		
		 $("#addmisionDate").datepicker({
			 dateFormat:"yymmdd"
		 });
	     
		
		$('.showBtn').on("click",function(){
			var id = $(this).attr("id");
			if($('.showBtn').hasClass("on")){
				$('.showBtn').removeClass("on");
				$(this).html("∨");
				$('#tb_'+id+"> tbody").css("display",'none');
			}else{
				$(this).html("∧");
				$('.showBtn').addClass("on");
				$('#tb_'+id+"> tbody").css("display",'table-row-group');
			}
		});
		
	});
	
function fnEdit(url,id){
	$.ajax({
		url : url,
		type : "POST",
		dataType : "HTML",
		success : function(html){
			$('#'+id).html(html);
		    var offset = $('#'+id).offset();
	        $('#main-wrap-'+id).animate({scrollTop : offset.top-100}, 400);
		},
		error : function(e){
			alert("error");
		}
	});
}
</script>
</head>
<body>
	<div class="content-main-wrap" id="main-wrap-development">
		<p class="title">
			<img src="/static/images/icon_home.gif"/> 홈 &gt;
			<span>매물관리 </span>&gt;<span> 단지관리 </span>&gt;<span> 단지리스트</span>
		</p>
		<!-- 기본정보 (MASTER TABLE) -->
		<table class="search-tbl">
			<colgroup>
				<col width="80"/><col width="*"/><col width="150"/><col width="*"/>
			</colgroup>
			<tbody>
				<tr>
					<td class="first-child"><div class="td c">주소</div></td>
					<td>
						<div class="td">
							<select class="inpt-select">
								<option value="">전체</option>
								<option value="서울특별시">서울특별시</option>
								<option value="인천광역시">인천광역시</option>
								<option value="대구광역시">대구광역시</option>
							</select>
							<select class="inpt-select">
								<option value="">전체</option>
								<option value="노원구">노원구</option>
								<option value="도봉구">도봉구</option>
								<option value="송파구">송파구</option>
							</select>
							<select class="inpt-select">
								<option value="">전체</option>
								<option value="노원구">송파동</option>
								<option value="도봉구">가락동</option>
								<option value="송파구">석촌동</option>
							</select>
						</div>
					</td>
					<td class="first-child"><div class="td c">단지명</div></td>
					<td><div class="td"><input type="text" class="inpt-text"/></div></td>
				</tr>
				<tr>
					<td colspan="4"><div class="td c"><span class="btntype4">조회</span></div></td>
				</tr>
			</tbody>
		</table>
		<table class="list-tbl">
			<colgroup>
				<col width="130"/><col width="*"/><col width="300"/><col width="150"/><col width="200"/><col width="200"/>
			</colgroup>
			<thead>
				<tr>
					<td colspan="6">
						<div class="td r">
							<span class="totCnt">총 10건</span>
							<span class="btntype4 mr30" onclick="fnEdit('/adm/development/edit','development');">신규등록</span>
						</div>
					</td>
				</tr>
				<tr>
					<td><div class="td">단지번호</div></td>
					<td><div class="td">단지명</div></td>
					<td><div class="td">주소</div></td>
					<td><div class="td">총세대수</div></td>
					<td><div class="td">준공년월</div></td>
					<td><div class="td">등록일</div></td>
				</tr>
			</thead>
			<tbody>
				<!-- <tr>
					<td colspan="6"><div class="td c">등록된 게시물이 없습니다.</div></td>
				</tr> -->
				<tr>
					<td><div class="td c">1</div></td>
					<td><div class="td c"><a href="#">헬리오시티</a></div></td>
					<td><div class="td c">서울시 송파구 가락동 479</div></td>
					<td><div class="td c">9510</div></td>
					<td><div class="td c">2018.12</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">2</div></td>
					<td><div class="td c"><a href="#">상계주공14단지</a></div></td>
					<td><div class="td c">서울시 노원구 상계동 626</div></td>
					<td><div class="td c">2265</div></td>
					<td><div class="td c">1989.04</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">3</div></td>
					<td><div class="td c"><a href="#">래미안송파파인탑</a></div></td>
					<td><div class="td c">서울시 송파구 송파동 243</div></td>
					<td><div class="td c">794</div></td>
					<td><div class="td c">2012.01</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">1</div></td>
					<td><div class="td c"><a href="#">헬리오시티</a></div></td>
					<td><div class="td c">서울시 송파구 가락동 479</div></td>
					<td><div class="td c">9510</div></td>
					<td><div class="td c">2018.12</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">2</div></td>
					<td><div class="td c"><a href="#">상계주공14단지</a></div></td>
					<td><div class="td c">서울시 노원구 상계동 626</div></td>
					<td><div class="td c">2265</div></td>
					<td><div class="td c">1989.04</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">3</div></td>
					<td><div class="td c"><a href="#">래미안송파파인탑</a></div></td>
					<td><div class="td c">서울시 송파구 송파동 243</div></td>
					<td><div class="td c">794</div></td>
					<td><div class="td c">2012.01</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">1</div></td>
					<td><div class="td c"><a href="#">헬리오시티</a></div></td>
					<td><div class="td c">서울시 송파구 가락동 479</div></td>
					<td><div class="td c">9510</div></td>
					<td><div class="td c">2018.12</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">2</div></td>
					<td><div class="td c"><a href="#">상계주공14단지</a></div></td>
					<td><div class="td c">서울시 노원구 상계동 626</div></td>
					<td><div class="td c">2265</div></td>
					<td><div class="td c">1989.04</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">3</div></td>
					<td><div class="td c"><a href="#">래미안송파파인탑</a></div></td>
					<td><div class="td c">서울시 송파구 송파동 243</div></td>
					<td><div class="td c">794</div></td>
					<td><div class="td c">2012.01</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
				<tr>
					<td><div class="td c">1</div></td>
					<td><div class="td c"><a href="#">헬리오시티</a></div></td>
					<td><div class="td c">서울시 송파구 가락동 479</div></td>
					<td><div class="td c">9510</div></td>
					<td><div class="td c">2018.12</div></td>
					<td><div class="td c">2019-10-23</div></td>
				</tr>
			</tbody>
		</table>
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
        
        <div class="edit_wrap" id="development">
        
        </div>
	</div>
</body>
</html>