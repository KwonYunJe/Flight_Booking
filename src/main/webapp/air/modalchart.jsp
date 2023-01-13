<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Modal</title>
 <!-- <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<style>
   .modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 100%;

        display: none;

        background-color: rgba(0, 0, 0, 0.4);
      }

      .modal.show {
        display: block;
      }

      .modal_body {
       position: absolute;
        top: 50%;
        left: 50%;
		padding-left: 75px;
		padding-top: 20px;
        width: 900px;
        height: 800px;
		align-items : center;
        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

        transform: translateX(-50%) translateY(-50%);
      }
     
     .m_head{
        height: 10%;
        padding: 20px;
        display: flex;
        justify-content: space-between;
        background-color:#e7e5e5;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
      }
      .m_body{
        height: 80%;
        padding: 10px;
      }
      
      
      .m_footer{
        height: 10%;
        padding: 15px;
        background-color:#e7e5e5;
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        display: flex;
        justify-content: end;
      }
      .modal_title{
        font-size: 18px;
        color: gray;
        font-weight: 500;
      }
      
      .close_btn{
        font-size: 20px;
        color: rgb(139, 139, 139);
        font-weight: 900;
        cursor: pointer;
      }
      .modal_label{
        padding-top: 10px;
      }
      .input_box{
        width: 100%;
        border: 1px solid rgb(189, 189, 189);
        height: 500px;
      }
      .modal_btn{
        width: 80px;
        height: 30px;
        border-radius: 5px;
        text-align: center;
        font-size: 14px;
        font-weight: bolder;
        padding-top: 5px;
        margin-left: 5px;
        font-family: sans-serif;
      }
      .cancle{
        background-color: white;
        color: black;
      }
      .save{
        background-color: rgb(50, 77, 158);
        color: white;
      }
      
  
</style>
</head>
<body>
  <!-- 모달 -->
<div class="modal" id="modal">
  <div class="modal_body">
  
 
    
    <div class="m_body">
     <canvas id="testChart" width=800px height=750px></canvas>
    </div>
    
  </div>
</div> 
<!-- 모달 -->

<!-- 방문자추이 그래프 시작 -->
	
	<script>
		var ctx = document.getElementById('testChart');
		var config = {
			type : 'bar',
			data : {
				labels : [ "ㅇㅇ", "ㅇㅇ", "ㅇㅇ", "ㅇㅇ"], //x축 
				datasets : [{
					data : [ 10, 20, 30, 40], //y축
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
					text : '가격 변동 추이', //제목  
					fontSize : 20
				},
				animation : {
					animateScale : true,
					animateRotate : true
				},
				scales: {
					yAxes: [{
						ticks: {
							min: 0, //그래프 수치 최소
							max: 50, // 그래프 수치 최대
							stepSize: 10, // 그래프 점선 간격 
							fontSize : 14, //폰트 크기 
						}
					}]
				}
			}
		};
		var myDoughnutChart = new Chart(ctx, config);
	</script>
	<!-- 방문자추이 그래프 끝 -->
	
  <button class="btn-open-popup">가격변동 추이</button>
  
     <script>
      const body = document.querySelector('body');
      const modal = document.querySelector('.modal');
      const btnOpenPopup = document.querySelector('.btn-open-popup');

      btnOpenPopup.addEventListener('click', () => {
        modal.classList.toggle('show');

        if (modal.classList.contains('show')) {
          body.style.overflow = 'hidden';
        }
      });

      modal.addEventListener('click', (event) => {
        if (event.target === modal) {
          modal.classList.toggle('show');

          if (!modal.classList.contains('show')) {
            body.style.overflow = 'auto';
          }
        }
      });
    </script>
    

</body>
</html>