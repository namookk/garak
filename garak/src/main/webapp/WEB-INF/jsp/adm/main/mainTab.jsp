<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.content-main-wrap .main-box{width:470px;height:330px;margin-top:20px;margin-bottom:10px;margin-left:50px;float:left;}

.content-main-wrap .main-box .search-tbl thead tr .td{font-size:15px;color:#1198C5;font-weight:bold;}
</style>
<script type="text/javascript" src="/static/adm/js/Chart.js"></script>
<script>
	$(document).ready(function(){
		
		var myChart = new Chart($('#sizeStatement'), {
		    type: 'bar',
		    data: {
		        labels: [
		        	'39A','39B','39C','39D','49A','49B','49C','49D','59',
		        	'84A','84B','84C','84D','84E','84F','84G','84H','84I',
		        	'84J1','84J2','84K','84L','99','110A','110B','130','150A'
		        ],
		        datasets: [{
		            label: '평당 매물 통계',
		            data: [
		            	1,2,3,4,5,6,7,8,9,10,
		            	11,12,13,14,15,16,17,18,19,20,
		            	21,22,23,24,25,26,27
		            	],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)',
		                'rgba(255, 99, 112, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 124, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)',
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 23, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)',
		                'rgba(255, 159, 141, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 132, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)',
		                'rgba(35, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		            ],
		            borderWidth: 0.5
		        }]
		    },
		    
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
		
		var myChart = new Chart($('#sellStatement'), {
		    type: 'line',
		    data: {
		        labels: [
		        	'1월','2월','3월','4월','5월','6월','7월','8월','9월',
		        	'10월','11월','12월'
		        ],
		        datasets: [{
		            label: '판매 수 통계',
		            data: [
		            	5,1,2,3,7,5,4,3,2,1,2,3
		            	],
		            backgroundColor: 'rgba(75, 192, 192, 0.4)',
		            lineTension: 0.1,
		            borderColor: 'rgba(75, 192, 192, 1)',
		            borderWidth: 0.5,
		            borderJoinStyle: 'miter',
		            pointBorderColor : "rgba(75,192,192,1)",
		            pointBackgroundColor : '#fff',
		            pointBorderWidth : 1,
		            pointHoverRadius: 5,
		        }]
		    },
		    
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
		
		var myChart = new Chart($('#visitStatement'), {
		    type: 'line',
		    data: {
		        labels: [
		        	'1월','2월','3월','4월','5월','6월','7월','8월','9월',
		        	'10월','11월','12월'
		        ],
		        datasets: [{
		            label: '방문자 수 통계',
		            data: [
		            	112,164,136,323,553,123,325,613,134,613,124,153
		            	],
		            backgroundColor: 'rgba(67, 116, 217, 0.4)',
		            lineTension: 0.1,
		            borderColor: 'rgba(67, 116, 217, 1)',
		            borderWidth: 0.5,
		            borderJoinStyle: 'miter',
		            pointBorderColor : "rgba(67, 116, 217, 1)",
		            pointBackgroundColor : '#fff',
		            pointBorderWidth : 1,
		            pointHoverRadius: 5,
		        }]
		    },
		    
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
		
	});
	
</script>
</head>
<body>
	<div class="content-main-wrap" id="main-wrap-main">
		<p class="title">
			<img src="/static/images/icon_home.gif"/> 홈
		</p>
		<div class="main-box" style="width:1000px;">
			<canvas id="sizeStatement" width="100%" height="30px"></canvas>
		</div>
		<div class="main-box">
			<table class="search-tbl">
				<colgroup>
					<col width="60"/><col width="100"/><col width="60"/><col width="100"/><col width="*"/>
				</colgroup>
				<thead>
					<tr>
						<td colspan="4"><div class="td"><span>방문자 통계</span></div></td>
						<td><div class="td" style="font-size:12px;color:black;"><span>오늘의 방문자 : 1</span></div></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="first-child"><div class="td c"><input type="radio" name="visitStatementFl" value="month" style="position:relative;top:3px;" checked/> 월별</div></td>
						<td>
							<div class="td">
								<select class="inpt-select">
									<option value="1" selected>2019년</option>
								</select>
							</div>
						</td>
						<td class="first-child"><div class="td c"><input type="radio" name="visitStatementFl" value="day" style="position:relative;top:3px;"/> 일별</div></td>
						<td>
							<div class="td">
								<select class="inpt-select">
									<option value="1">1월</option>
									<option value="2">2월</option>
									<option value="3">3월</option>
									<option value="4">4월</option>
									<option value="5">5월</option>
									<option value="6">6월</option>
									<option value="7">7월</option>
									<option value="8">8월</option>
									<option value="9">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
							</div>
						</td>
						<td><div class="td c"><span class="btntype4">조회</span></div></td>
					</tr>
				</tbody>
			</table>
			<canvas id="visitStatement" width="100%" height="54px"></canvas>
		</div>
		<div class="main-box">
			<table class="search-tbl">
				<colgroup>
					<col width="80"/><col width="*"/><col width="80"/><col width="*"/>
				</colgroup>
				<thead>
					<tr>
						<td colspan="4"><div class="td"><span>조회수 랭킹</span></div></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="first-child"><div class="td c">매물종류</div></td>
						<td>
							<div class="td">
								<select class="inpt-select">
									<option value="">전체</option>
									<option value="PR01">아파트</option>
									<option value="PR02">상가</option>
								</select>
							</div>
						</td>
						<td colspan="2"><div class="td c"><span class="btntype4">조회</span></div></td>
					</tr>
				</tbody>
			</table>
			<table class="list-tbl">
				<colgroup>
					<col width="80"/><col width="120"/><col width="*"/><col width="80"/>
				</colgroup>
				<thead>
					<tr>
						<td><div class="td c">랭킹</div></td>
						<td><div class="td c">매물종류</div></td>
						<td><div class="td c">매물명</div></td>
						<td><div class="td c">조회수</div></td>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td><div class="td c">1</div></td>
					<td><div class="td c">아파트</div></td>
					<td><div class="td c">헬리오시티</div></td>
					<td><div class="td c">99</div></td>
				</tr>
				<tr>
					<td><div class="td c">2</div></td>
					<td><div class="td c">상가</div></td>
					<td><div class="td c">헬리오시티</div></td>
					<td><div class="td c">88</div></td>
				</tr>
				<tr>
					<td><div class="td c">3</div></td>
					<td><div class="td c">아파트</div></td>
					<td><div class="td c">래미안송파파인탑</div></td>
					<td><div class="td c">77</div></td>
				</tr>
				<tr>
					<td><div class="td c">4</div></td>
					<td><div class="td c">아파트</div></td>
					<td><div class="td c">헬리오시티</div></td>
					<td><div class="td c">66</div></td>
				</tr>
				<tr>
					<td><div class="td c">5</div></td>
					<td><div class="td c">아파트</div></td>
					<td><div class="td c">헬리오시티</div></td>
					<td><div class="td c">55</div></td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="main-box">
			<table class="search-tbl">
				<colgroup>
					<col width="60"/><col width="100"/><col width="60"/><col width="100"/><col width="*"/>
				</colgroup>
				<thead>
					<tr>
						<td colspan="4"><div class="td"><span>판매 수 통계</span></div></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="first-child"><div class="td c"><input type="radio" name="sellStatementFl" value="month" style="position:relative;top:3px;" checked/> 월별</div></td>
						<td>
							<div class="td">
								<select class="inpt-select">
									<option value="1" selected>2019년</option>
								</select>
							</div>
						</td>
						<td class="first-child"><div class="td c"><input type="radio" name="sellStatementFl" value="day" style="position:relative;top:3px;"/> 일별</div></td>
						<td>
							<div class="td">
								<select class="inpt-select">
									<option value="1">1월</option>
									<option value="2">2월</option>
									<option value="3">3월</option>
									<option value="4">4월</option>
									<option value="5">5월</option>
									<option value="6">6월</option>
									<option value="7">7월</option>
									<option value="8">8월</option>
									<option value="9">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
							</div>
						</td>
						<td><div class="td c"><span class="btntype4">조회</span></div></td>
					</tr>
				</tbody>
			</table>
			<canvas id="sellStatement" width="100%" height="54px"></canvas>
		</div>
		<div class="main-box">
		
		</div>
	</div>
</body>
</html>