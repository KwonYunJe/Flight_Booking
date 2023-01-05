<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modal</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</head>
<body>
	<!-- 방문자추이 그래프 시작 -->
	<canvas id="testChart" width="2000vw" height="700vh"></canvas>
	<script>
		var ctx = document.getElementById('testChart');
		var config = {
			type : 'line',
			data : {
				labels : [ "ㅇㅇ", "ㅇㅇ", "ㅇㅇ", "ㅇㅇ"],
				datasets : [{
					data : [ 10, 20, 30, 40],
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
							max: 50,
							stepSize: 10,
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
