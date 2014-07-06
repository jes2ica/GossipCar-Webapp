<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Gossip Car</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="js/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<script src="js/barchart.js"></script>
<script src="js/semantic.js"></script>
<script src="js/jquery.lightbox-0.5.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
<link rel="stylesheet" href="css/semantic.css" />
<noscript>
	<link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-wide.css" />
	<link rel="stylesheet" href="css/semantic.css" />
</noscript>

<script type="text/javascript">
    $(function() {
    	 $('#gallery a').lightBox();
    });
    !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
	function star(){
		 
		 var param1 = parseInt(document.getElementById("posValue").value); 
		 var param2 = parseInt(document.getElementById("negValue").value); 
		 var param3 = parseInt(document.getElementById("heatValue").value);
		 
		 var starNum =  Math.round(parseInt(document.getElementById("scoreValue").value-10)/10);
		 var tweets = document.getElementsByTagName('div');
		 var tweetsScore = document.getElementsByName('tweetValue');
		 
		 if(starNum>=5){
			 starNum=5;
		 }
		 document.getElementById('score').innerHTML='Rating: '+starNum;
		 
		 if(starNum==5){
			
	   		document.getElementById('star1').className='icon active';
	   		document.getElementById('star2').className='icon active';
	   		document.getElementById('star3').className='icon active';
	   		document.getElementById('star4').className='icon active';
	   		document.getElementById('star5').className='icon active'; 
	   	 }
	   	 else if(starNum==4){
	   		document.getElementById('star1').className='icon active';
	   		document.getElementById('star2').className='icon active';
	   		document.getElementById('star3').className='icon active';
	   		document.getElementById('star4').className='icon active';
	   		document.getElementById('star5').className='icon'; 
	   	 }
	   	 else if(starNum==3){
	   		document.getElementById('star1').className='icon active';
	   		document.getElementById('star2').className='icon active';
	   		document.getElementById('star3').className='icon active';
	   		document.getElementById('star4').className='icon';
	   		document.getElementById('star5').className='icon'; 
	   	 }
	   	 else if(starNum==2){
	   		document.getElementById('star1').className='icon active';
	   		document.getElementById('star2').className='icon active';
	   		document.getElementById('star3').className='icon';
	   		document.getElementById('star4').className='icon';
	   		document.getElementById('star5').className='icon';  
	   	 }
	   	 else if(starNum==1){
	   		document.getElementById('star1').className='icon active';
	   		document.getElementById('star2').className='icon';
	   		document.getElementById('star3').className='icon';
	   		document.getElementById('star4').className='icon';
	   		document.getElementById('star5').className='icon';  
	   	 }
	   	else{
	   		document.getElementById('star1').className='icon';
	   		document.getElementById('star2').className='icon';
	   		document.getElementById('star3').className='icon';
	   		document.getElementById('star4').className='icon';
	   		document.getElementById('star5').className='icon'; 
	   	}
		 
		 for(var i=0;i<5;i++){
			 if(parseInt(tweetsScore[i].value)==0){
				 tweets[34+i].className="12u red ui message";
			 }
			 else if(parseInt(tweetsScore[i].value)==4){
				 tweets[34+i].className="12u green ui message";
			 }
		 }
	}
</script>
</head>
<body onload="star()">

	<!-- Header -->
	<div id="header" class="skel-panels-fixed">
		<div class="top" >
			<div style="text-align:center"><a href="index.jsp"><img src="images/banner2.jpg" style="width:300px"></img></a></div>

			<!-- Logo -->
			
			<nav id="nav">
				<ul>	
				
				<br/>
				<li><div style="font-size:30px;text-align:center"><s:property value="s1"/></div></li>
				<li><div style="font-size:18px;text-align:center"><s:property value="s2"/></div></li>
				<li><div style="text-align:center"><a id="aaaa" href="https://twitter.com/share?text=@GossipCar: ${s1} ${s2} score:${subjectScore} heat:${subjectHotLevel}" class="twitter-share-button" data-lang="en" >Tweet</a></div>
				</li>
				<br/>

			<!-- Nav -->
			
					<li ><a href="#portfolio" id="portfolio-link"
						class="skel-panels-ignoreHref" ><span style="font-size:20px;font-color:black;">Gallery&nbsp;&nbsp;<i class="photo icon"></i></span></a></li>
					<li><a href="#about" id="about-link"
						class="skel-panels-ignoreHref"><span style="font-size:20px;font-color:black">Sentimental Analysis&nbsp;&nbsp;<i class="edit icon"></i></span></a></li>
					<li><a href="#contact" id="contact-link"
						class="skel-panels-ignoreHref"><span style="font-size:20px;font-color:black">Hot Tweets&nbsp;&nbsp;<i class="twitter icon"></i></span></a></li>
				</ul>
			</nav>
			<br/>
			<div id="rating" style="text-align:center">
				<span style="color:#fff;font-size:25px"  id="score">Rating:</span><br/>
					<div class="ui large star rating" style="display:inline-block">
					  <i id="star1" class="icon"></i>
					  <i id="star2" class="icon"></i>
					  <i id="star3" class="icon"></i>
					  <i id="star4" class="icon"></i>
					  <i id="star5" class="icon"></i>
					</div>
					<strong style="color:#fff"></strong>
					<input type="hidden" name="scoreValue" id="scoreValue" value="<s:property value="subjectScore"/>"/>
					
				<div>
					<span style="color:#fff;font-size:25px">Hot Level:&nbsp;<s:property value="subjectHotLevel"/></span><br/>
					<input type="hidden" name="heatValue" id="heatValue" value="<s:property value="subjectHotLevel"/>"/>
					<div style="margin-left:90px" id="gaugechart_div" style="height:100px;width:100px"></div>
				</div>
			</div>
			

		</div>
	</div>
	<!-- Main -->
	<div id="main">
		<!-- Portfolio -->
		<section id="portfolio" class="two">
			<div class="container">
				<header>
					<span style="font-size:40px">Gallery</span>
				</header>
				<div id="gallery">
					<div class="row">
					<div class="4u">
						<article class="item">
							<a href=<s:property value="photoUrls[0]"/> class="image full"><img src=<s:property value="photoUrls[0]"/> alt="" /></a>
						</article>
						<article class="item">
							<a href=<s:property value="photoUrls[1]"/> class="image full"><img src=<s:property value="photoUrls[1]"/> alt="" /></a>
						</article>
					</div>
					<div class="4u">
						<article class="item">
							<a href=<s:property value="photoUrls[2]"/> class="image full"><img src=<s:property value="photoUrls[2]"/> alt="" /></a>
						</article>
						<article class="item">
							<a href=<s:property value="photoUrls[3]"/> class="image full"><img src=<s:property value="photoUrls[3]"/> alt="" /></a>
						</article>
					</div>
					<div class="4u">
						<article class="item">
							<a href=<s:property value="photoUrls[4]"/> class="image full"><img src=<s:property value="photoUrls[4]"/> alt="" /></a>
						</article>
						<article class="item">
							<a href=<s:property value="photoUrls[5]"/> class="image full"><img src=<s:property value="photoUrls[5]"/> alt="" /></a>
						</article>
					</div>
				</div>
				<p style="text-align:right"><a href="#">More...</a></p>
				<p style="text-align:right">*Source: Flickr</p>
			</div>
			</div>
		</section>

		<!-- Hot Tweets -->
		<section id="about" class="three">
			<div class="container">
				<header>
					<span style="font-size:40px">Sentimental Analysis</span>
				</header>

				<div class="ui two column grid" style="display: block" >
					  <div class="row">
					    <div class="column">
					      <div class="ui raised segment" style="width:500px;">
					        <div class="ui red ribbon label" style="font-size:20px">Sentiment by Percent</div>
					        	<div id="piechart_div" style="width:480px; height: 350px;"></div>
					        	<input type="hidden" name="negValue" id="negValue" value="<s:property value="attitudeSplit[0]"/>"/>
								<input type="hidden" name="posValue" id="posValue" value="<s:property value="attitudeSplit[2]"/>"/>
					       	<div class="ui red ribbon label" style="font-size:20px">Sentiment by Count</div>
					        	<div id="barchart_div" style="width:480px; height: 280px;margin-bottom:10px;"></div>	
					      </div>
					    </div>
					    <div class="column" >
					      <div class="ui raised segment" style="margin-left:40px;width:500px">
					        <div class="ui red ribbon label" style="font-size:20px">Heat Map</div>
					        	<div id="geochart_div" style="margin-left:0px;margin-top:100px;margin-bottom:150px;height: 450px;"></div>
					      </div>
					      
					    </div>
					  </div>
					</div>

			</div>
			
		</section>

		<!-- Contact -->
		<section id="contact" class="four">
			<div class="container">
				<header>
					<span style="font-size:40px">Hot Tweets</span>
				</header>
				<div class="ui two column grid" style="display: block" >
					  <div class="row">
					    <div class="column">
					      <div class="ui raised segment" style="width:500px">
					      		<span style="font-colr:#888;font-size:25px"><i class="thumbs up large blue outline icon"></i>Positive</span>
					        	<s:iterator value="top5GoodStatus">
									<div class="ui blue message" style="font-size:22px"><s:property value="text"/></div>
								</s:iterator>
					      </div>
					    </div>
					    <div class="column" >
					      <div class="ui raised segment" style="margin-left:40px;width:500px">
					      		<span style="font-colr:#888;font-size:25px"><i class="thumbs down large red outline icon"></i>Negative</span>
								<s:iterator value="top5BadStatus">
									<div class="ui red message" style="font-size:22px"><s:property value="text"/></div>
								</s:iterator>
					        	
					      </div>
					      
					    </div>
					  </div>
					</div>

				<p style="text-align:right"><a href="#">More...</a></p>
				<p style="text-align:right">*Source: Twitter</p>
			</div>

			
		</section>
		
		

	</div>

	<!-- Footer -->
	<div id="footer">

		<!-- Copyright -->
		<div class="copyright">
			<p>&copy; 2014 Seagull Consulting. <br/>All rights reserved.</p>
		</div>

	</div>

</body>
</html>