/**
 * 
 */

google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);

function drawChart() {
	var data = google.visualization.arrayToDataTable([
	  ['Car','Posts',{role: 'style'}],
	  ['BMW', 1200,'#4EFF2F'],
	  ['Jeep', 800,'#E8C80C'],
	  ['Honda', 660,'#FF6900'],
	  ['Audi', 530,'#E80C7E'],
	  ['Buick', 400,'#3F0DFF']]);

	var options = {
			fontSize: 18,
			backgroundColor: 'none',
			legend: 'none',
			hAxis:{textStyle: {color:'white'}},
			vAxis:{textStyle: {color:'white'}}
	};

	var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	chart.draw(data, options);
}