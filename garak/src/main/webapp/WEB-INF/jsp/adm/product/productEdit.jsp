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
					<td class="first-child"><div class="td">* 매물번호</div></td>
					<td colspan="3"><div class="td"><input type="text" class="inpt-text" placeholder="ex) 10001"/></div></td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 매물종류</div></td>
					<td colspan="3"><div class="td">
						<select class="inpt-select">
								<option value="">선택</option>
								<option value="SM01">아파트</option>
								<option value="SM02">상가</option>
							</select>
					</div></td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 매물이름</div></td>
					<td colspan="3"><div class="td"><input type="text" class="inpt-text" placeholder="ex) 헬리오시티"/></div></td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 매물주소</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" style="width:100px;" placeholder="시"/>
							<input type="text" class="inpt-text" style="width:100px;" placeholder="군"/>
							<input type="text" class="inpt-text" style="width:100px;" placeholder="구"/>
						</div>
					</td>
					<td class="first-child"><div class="td">* 평</div></td>
					<td>
						<div class="td">
							<select class="inpt-select">
								<option value="">선택</option>
								<option value="SM01">39A</option>
								<option value="SM02">39B</option>
								<option value="SM03">39C</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 위도/경도</div></td>
					<td colspan="3">
						<div class="td">
							<select class="inpt-select">
								<option value="">직접입력</option>
								<option value="27.19303">101동</option>
								<option value="27.19303">102동</option>
								<option value="27.19303">103동</option>
							</select>
							<input type="text" class="inpt-text" placeholder="위도"/>
							<input type="text" class="inpt-text" placeholder="경도"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 거래방식</div></td>
					<td colspan="3">
						<div class="td">
							<input type="radio" class="inpt-radio" name="sellerCd" value="SL01" id="SL01"/> <label for="SL01">매매</label>
							<input type="radio" class="inpt-radio" name="sellerCd" value="SL02" id="SL02"/> <label for="SL02">전세</label>
							<input type="radio" class="inpt-radio" name="sellerCd" value="SL03" id="SL03"/> <label for="SL03">월세</label>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 매물가격</div></td>
					<td>
						<div class="td">
							<select class="inpt-select" style="width:80px;">
								<option value="">선택</option>
								<option value="UN01">억원</option>
								<option value="UN02">만원</option>
								<option value="UN03">원</option>
							</select>
							<input type="text" class="inpt-text" placeholder="ex) 17.5" style="width:130px;"/>
						</div>
					</td>
					<td class="first-child"><div class="td">보증금</div></td>
					<td>
						<div class="td">
							<select class="inpt-select" style="width:80px;" disabled>
								<option value="">선택</option>
								<option value="UN01">억원</option>
								<option value="UN02">만원</option>
								<option value="UN03">원</option>
							</select>
							<input type="text" class="inpt-text" placeholder="ex) 17.5" style="width:130px;" disabled/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 썸네일</div></td>
					<td colspan="3">
						<div class="td">
							<input type="file"/>
							<span style="color:#6d6d6d;">( 180 * 160 )</span>
							<span class="img">TEST.jpg</span>
							<span class="btntype1">삭제</span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 노출여부</div></td>
					<td colspan="3">
						<div class="td">
							<input type="radio" class="inpt-radio" name="useFl" value="Y" id="useFl_Y"/> <label for="useFl_Y">노출</label>
							<input type="radio" class="inpt-radio" name="useFl" value="N" id="useFl_N"/> <label for="useFl_N">미노출</label>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		<!-- 상세정보 (Detail Table) -->
		
		<table class="edit-tbl on" id="tb_02">
			<colgroup>
				<col width="150"/><col width="*"/><col width="150"/><col width="*"/>
			</colgroup>
			<thead>
				<tr>
					<td colspan="4"><div class="td"><span>상세정보</span><span class="showBtn on" id="02">∧</span></div></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="first-child"><div class="td">* 단지정보</div></td>
					<td colspan="3">
						<div class="td">
							<select class="inpt-select" style="width:200px;">
								<option value="">선택</option>
								<option value="UN01">헬리오시티</option>
								<option value="UN02">상계주공14단지</option>
								<option value="UN03">래미안송파파인탑</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 상세주소</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" style="width:100px;" placeholder="동 ex) 213"/>
							<input type="text" class="inpt-text" style="width:100px;" placeholder="호 ex) 303"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 면적</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" style="width:150px;" placeholder="공급면적 ex) 110"/>
							<input type="text" class="inpt-text" style="width:150px;" placeholder="전용면적 ex) 84"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 층</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" style="width:100px;" placeholder="해당 층 ex) 3"/>
							<input type="text" class="inpt-text" style="width:100px;" placeholder="총 층 ex) 25"/>
						</div>
					</td>
					<td class="first-child"><div class="td">* 방 수</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" style="width:100px;" placeholder="방 수 ex) 2"/>
							<input type="text" class="inpt-text" style="width:100px;" placeholder="욕실 수 ex) 1"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 총 주차대수</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" style="width:100px;" placeholder="ex) 12456"/>
						</div>
					</td>
					<td class="first-child"><div class="td">* 해당면적세대수</div></td>
					<td>
						<div class="td">
							<input type="text" class="inpt-text" style="width:100px;" placeholder="ex) 1480"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 난방</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" style="width:200px;" placeholder="방식 ex) 지역난방"/>
							<input type="text" class="inpt-text" style="width:200px;" placeholder="연료 수 ex) 열병합"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 평당가격</div></td>
					<td>
						<div class="td">
							<select class="inpt-select" style="width:80px;">
								<option value="">선택</option>
								<option value="UN01">억원</option>
								<option value="UN02">만원</option>
								<option value="UN03">원</option>
							</select>
							<input type="text" class="inpt-text" placeholder="ex) 5344" style="width:130px;"/>
						</div>
					</td>
					<td class="first-child"><div class="td">융자금</div></td>
					<td>
						<div class="td">
							<select class="inpt-select" style="width:80px;">
								<option value="">선택</option>
								<option value="UN01">억원</option>
								<option value="UN02">만원</option>
								<option value="UN03">원</option>
							</select>
							<input type="text" class="inpt-text" placeholder="ex) 3000" style="width:130px;"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 현관구조</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" placeholder="ex) 계단식" style="width:130px;"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 입주가능일</div></td>
					<td colspan="3">
						<div class="td">
							<input type="text" class="inpt-text" style="width:100px;" id="addmisionDate" readonly/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 상세 이미지</div></td>
					<td colspan="3">
						<div class="td">
							<span>이미지 1 </span><input type="file"/>
							<span style="color:#6d6d6d;">( 180 * 160 )</span>
							<span class="img">TEST.jpg</span>
							<span class="btntype1">삭제</span>
						</div>
						<div class="td">
							<span>이미지 2 </span><input type="file"/>
							<span style="color:#6d6d6d;">( 180 * 160 )</span>
							<span class="img">TEST.jpg</span>
							<span class="btntype1">삭제</span>
						</div>
						<div class="td">
							<span>이미지 3 </span><input type="file"/>
							<span style="color:#6d6d6d;">( 180 * 160 )</span>
							<span class="img">TEST.jpg</span>
							<span class="btntype1">삭제</span>
						</div>
						<div class="td">
							<span>이미지 4 </span><input type="file"/>
							<span style="color:#6d6d6d;">( 180 * 160 )</span>
							<span class="img">TEST.jpg</span>
							<span class="btntype1">삭제</span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="first-child"><div class="td">* 노출여부</div></td>
					<td colspan="3">
						<div class="td">
							<input type="radio" class="inpt-radio" name="useFl" value="Y" id="useFl_Y"/> <label for="useFl_Y">노출</label>
							<input type="radio" class="inpt-radio" name="useFl" value="N" id="useFl_N"/> <label for="useFl_N">미노출</label>
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