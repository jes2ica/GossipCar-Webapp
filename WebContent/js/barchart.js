/**
 * 
 */

	  google.load("visualization", "1", {packages:["corechart"]});
	  google.load('visualization', '1', {packages:['gauge']});
      google.setOnLoadCallback(drawBarChart);
      google.setOnLoadCallback(drawGaugeChart);
      google.setOnLoadCallback(drawPieChart);
      google.setOnLoadCallback(drawRegionsMap);
      
      function drawBarChart() {
    	var posNum = parseInt(document.getElementById("posValue").value);
      	var negNum = parseInt(document.getElementById("negValue").value);
        var data = google.visualization.arrayToDataTable([
          ["Element","Number",{role:"style"}],
          ["Positive",posNum,"#69cef6"],
          ["Negative",negNum,"#da5f5c"]
        ]);

        var options = {
        		vAxis:{textStyle: 'none'},
        		legend: { position: 'none'},
        		fontSize:16
        		
        		
          
        };

        var chart = new google.visualization.BarChart(document.getElementById('barchart_div'));
        chart.draw(data, options);
      }
      
      function drawGaugeChart() {
    	  var heat = parseInt(document.getElementById("heatValue").value);
          var data = google.visualization.arrayToDataTable([
            ['Label', 'Value'],
            ['Heat', heat],
          ]);

          var options = {
            width: 400, height: 120,
            redFrom: 70, redTo: 100,
            yellowFrom:40, yellowTo: 70,
            greenFrom:0, greenTo:40,
            minorTicks: 5
          };

          var chart = new google.visualization.Gauge(document.getElementById('gaugechart_div'));
          chart.draw(data, options);
        }
      
     
      function drawPieChart() {
    	var posNum = parseInt(document.getElementById("posValue").value);
    	var negNum = parseInt(document.getElementById("negValue").value);
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day',{role:"style"}],
          ['Positive',posNum,"#69cef6"],
          ['Negative',negNum,"#da5f5c"],
          
        ]);

        var options = {
        		is3D: true,
        		colors:['69cef6','#da5f5c'],
        		legend:{textStyle: {fontSize: 16}},
        		pieSliceTextStyle:{fontSize:16}
          
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_div'));
        chart.draw(data, options);
      }
      
      function drawRegionsMap() {
          var data = google.visualization.arrayToDataTable([
            ['Country', 'Posts'],
            ['Germany', 100],
            ['United States', 977],
            ['Brazil', 100],
            ['Canada', 150],
            ['France', 40],
            ['RU', 261],
            ['China', 400],
            ['UK', 160],
            ['Austrlia', 438],
            ['Argentina',190]
          ]);

          var options = {
        		  colorAxis: {colors:['#e6f4f9','#69cef6']},
        		  legend:{textStyle: {fontSize: 16}}
          };

          var chart = new google.visualization.GeoChart(document.getElementById('geochart_div'));
          chart.draw(data, options);
      };