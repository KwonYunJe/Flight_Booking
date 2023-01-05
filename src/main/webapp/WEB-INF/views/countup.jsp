<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>

<script type="text/javascript">
	$(function() {
		var count0 = ${covidList.get(1)} - 200;
		var count1 = ${covidList.get(2)} - 200;
		var	count2 = ${covidList.get(3)} - 200;

		timeCounter();

		function timeCounter() {

			id0 = setInterval(count0Fn, 0.1);
			//0.1 = 속도조절
			function count0Fn() {
				count0++;
				if (count0 > ${covidList.get(1)}) {
					clearInterval(id0);
				} else {
					$(".number").eq(0).text(count0);
				}

			}

			id1 = setInterval(count1Fn, 0.1);
			//0.1 = 속도 조절
			function count1Fn() {
				count1++;
				if (count1 > ${covidList.get(2)}) {
					clearInterval(id1);
				} else {
					$(".number").eq(1).text(count1);
				}
			}

			id2 = setInterval(count2Fn, 0.1);
			//0.1 = 속도조절
			function count2Fn() {
				count2++;
				if (count2 > ${covidList.get(3)}) {
					clearInterval(id2);
				} else {
					$(".number").eq(2).text(count2);
				}
			}
		}
	});
</script>

<style type="text/css">
ul {
	width: 100%;
	color: #666;
	text-align: center;
	margin-top: 100px;
}

li {
	float: left;
	width: 30%;
	list-style: none;
	border-left: 2px solid #024DAF;
}

li:first-child {
	border-left: 0;
}

.regname {
	position: relative;
	top: 50px;
	text-align: center;
	background-color: #024DAF;
	color: white;
}

.utime {
	display: inline-block;
	color: #666;
}
</style>
</head>

<body>
	<!-- 코로나 시작 -->
	<div class="regname">
		<h2>${covidList.get(0)} COVID-19 발생현황</h2>
	</div>
	<div class="main">
		<ul>
			<li>
				<h2 class="number">${covidList.get(1)}</h2> <i>전체 확진자 수</i>
			</li>
			<li>
				<h2 class="number">${covidList.get(2)}</h2> <i>전일대비</i>
			</li>
			<li>
				<h2 class="number">${covidList.get(3)}</h2> <i>사망누적</i>
			</li>
		</ul>
	</div>
	<div class="utime">
		<br><h4>${covidList.get(4)}</h4><!-- 갱신기준날짜 -->
	</div>
	<!-- 코로나 끝 -->
	
	<!-- 방문자추이 그래프 시작 -->
	<canvas id="testChart" width="2000vw" height="700vh"></canvas>
	<script>
		var ctx = document.getElementById('testChart');
		var config = {
			type : 'line',
			data : {
				labels : [ ${monthList.get(0)}, ${monthList.get(1)}, ${monthList.get(2)}, ${monthList.get(3)}],
				datasets : [{
					data : [ ${total[0]}, ${total[1]}, ${total[2]}, ${total[3]}],
					backgroundColor : "rgba(54, 162, 235, 0.2)",
					borderWidth:2,
					pointRadius: 8,
					borderColor:"#024DAF"
				}]
			},
			options : {
				responsive : false,
				legend : {
					display: false,
				},
				title : {
					display : true,
					text : '월별 방문자 추이'
				},
				animation : {
					animateScale : true,
					animateRotate : true
				},
				scales: {
					yAxes: [{
						ticks: {
							min: 0,
							max: 5000000,
							stepSize: 1000000,
							fontSize : 14,
						}
					}]
				}
			}
		};
		var myDoughnutChart = new Chart(ctx, config);
	</script>
	<!-- 방문자추이 그래프 끝 -->
	
</body>
</html>