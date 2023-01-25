<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Day', 'Price'],
          ['1', 1000],
          ['2', 1170 ],
          ['3', 66 ],
          ['4', 1030],
          ['5', 1000],
          ['6', 1170 ],
          ['7', 66 ],
          ['8', 1030],  
          ['9', 1000],
          ['10', 1170 ],
          ['11', 66 ],
          ['12', 500],  
          ['13', 1000],
          ['14', 55 ],
          ['15', 66 ],
          ['16', 1030],  
          ['17', 1000],
          ['18', 1170 ],
          ['19', 66 ],
          ['20', 1030],  
          ['21', 1000],
          ['22', 1170 ],
          ['23', 66 ],
          ['24', 530],  
          ['25', 1000],
          ['26', 1170 ],
          ['27', 66 ],
          ['28', 1030],  
          ['29', 1000],
          ['30', 1170 ]
       
       
        ]);

        var options = {
          chart: {
            title: '가격변동 추이',
            subtitle: '부산-서울',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <div id="columnchart_material" style="width: 500px; height: 300px;"></div>
  </body>
</html>