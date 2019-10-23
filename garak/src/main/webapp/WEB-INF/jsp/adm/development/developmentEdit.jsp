<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	$(document).ready(function(){
		$.datepicker.setDefaults($.datepicker.regional["ko"]);
		
		 $("#completeDate").datepicker({
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
	
	
	
	
	
</script>
</head>
<body>
	<div class="content-main-wrap">
		<!-- 기본정보 (MASTER TABLE) -->
		<table class="edit-tbl on" id="tb_01">
			<colgroup>
				<col width="150"/><col width="*"/><col width="150"/><col width="*"/>
			</colgroup>
			<thead>
				<tr>
					<td colspan="4"><div class="td"><span>기본정보</span><span class="showBtn on" id="01">∧</span></div></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="first-child"><div class="td">* 단지명</div></td>
					<td><div class="td"><input type="text" class="inpt-text" placeholder="ex) 헬리오시티"/></div></td>
					<td class="first-child"><div class="td">* 면적</div></td>
					<td><div class="td"><input type="text" class="inpt-text" placeholder="ex) 84/64"/></div></td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 총 세대수</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" placeholder="ex) 9510"/>
						</div>
					</td>
					<td class="first-child"><div class="td">세대 당 주차수</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" placeholder="ex) 1.3"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">층</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" placeholder="최저층 ex) 1 "/>
							<input type="text" class="inpt-text" placeholder="최고층 ex) 25"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 준공년월</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" id="completeDate" style="width:150px;" readonly/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">용적률</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" style="width:80px;" placeholder="ex) 285"/> %
						</div>
					</td>
					<td class="first-child"><div class="td">건폐율</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" style="width:80px;" placeholder="ex) 19"/> %
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 건설사</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" style="width:400px" placeholder="ex) 현대산업개발, 현대건설, 삼성물산"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 주소</div></td>
					<td colspan="3">
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
							<input type="text" class="inpt-text" style="width:250px" placeholder="상세주소 ex) 479"/>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn_area">
			<span class="btntype2">저장</span>
			<span class="btntype3">목록</span>
		</div>
	</div>
</body>
</html>