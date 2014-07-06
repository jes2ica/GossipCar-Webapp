<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script src="js/select-car.js"></script>
<script src="js/nprogress.js"></script>
<script src="js/jquery.fittext.js"></script>
<script src="js/jquery.lettering.js"></script>
<script src="js/title.js"></script>
<script src="http://yandex.st/highlightjs/7.3/highlight.min.js"></script>
<script src="js/jquery.textillate.js"></script>
<script src="js/power-slider.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
<script type="text/javascript">
    $(function(){  
        $("#slider").powerSlider({handle:"left"});
        $(".code h3 span").each(function(i){
        	$(this).click(function(){
        		$(this).addClass("active").siblings().removeClass("active");
        		$(".code pre").eq(i).show().siblings("pre").hide();
        	})
        })
    });
</script>
<link rel="stylesheet" href="css/semantic.css" />
<link rel="stylesheet" href="css/nprogress.css" />
<link href="css/animate.css" rel="stylesheet">
<link href="css/dark.css" rel="stylesheet">
<link href="css/style1.css" rel="stylesheet">
<link >
<style type="text/css">
	.demolist{font-size: 0; *word-spacing: -1px;}
	.demolist li{display: inline-block; font-size:14px; border:1px solid #eee; padding:10px; margin-right:10px; *display:inline; *zoom:1; word-spacing: normal; letter-spacing: normal; vertical-align: top;}
	.active{background:#eee;}
	.hidden{display: none;}
	.code{padding:0px;}
	.code h3 span{border:1px solid #ddd; margin-left:-1px; padding:10px;display:inline-block; cursor:pointer;}
	pre{background:#eee; padding:10px;}
	.menu{width:100%; background:#ECECEC; position:fixed; _position:absolute; top:0; left:0; z-index:3;}
	.menu ul{width:600px; margin:0 auto;}
	.menu ul li{float:left; margin-right:10px; padding:2px 6px;}
	.menu ul li.active{background: #fff;}
	.menu ul li a{line-height:32px; padding:0 4px;}
	.content{ margin:0px;}

	.slider{height:1080px; width:1920px; margin:20px auto; overflow:hidden; position:relative;}
	.sliderbox{position:relative;}
	.slidernav{position:absolute; right:4px; bottom:5px; z-index:1;}
	.slidernav li{float:left; width:24px;}
	.slidernav li a{width:16px; padding:2px 4px; height:12px; background:#fff; color:#000; text-align:center;}
	.slidernav li.current a{background:#3B8DD1; color:#fff;}
	.slidertext{background:#000; background:rgba(0,0,0,0.6); filter:alpha(opacity=60); position:absolute; left:0; bottom:0; width:100%;}
	.slidertext li{display:none; padding-left:20px;}
	.slidertext li a{text-align:left; line-height: 30px; height: 30px; color: #fff;}
	.slider .prev, .slider .next{position: absolute; top:50%; margin-top:-30px; cursor: pointer; width:61px; height:61px; left:0; background: url(images/ft_icons.png) 0 0 no-repeat;}
	.slider .next{right:0; left:auto; background-position: 0 -61px;}
</style>

<noscript>
	<link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-wide.css" />
	<link rel="stylesheet" href="css/semantic.css" />
</noscript>

</head>
<body>
	
		<div class="code">
		<pre class="hidden">.slider{height:170px; margin:20px auto; overflow:hidden; position:relative;}
.sliderbox{position:relative;}
		</pre>
		<pre class="hidden">$("#slider").powerSlider({handle:"left"});
		</pre>
	</div>
	<form name="frm" action="mainaction_excuteSearch" method="post">
			<div style="width:1200px;margin:0 auto;">
					<div class="decal" style="background:rgba(255,255,255,0)"></div>
					<div class="jumbotron" style="padding-top:0px;padding-bottom:10px;background:rgba(255,255,255,0);">
						<div class="container" style=" padding-top:0px;padding-bottom:0px;background:rgba(255,255,255,0)">
				  		  <h1 class="glow in tlt">Gossip Car</h1>
				  		  <p class="tlt" data-in-effect="bounceInDown">
				  		  	Understanding cars through social media
				  		  </p>
			  			</div>
			  		</div>
			  		
			  		
			  		<div class="main" style="position:absolute;left:0px; top:0px;z-index:-9999">
			<div class="content">
				<div class="slider" id="slider" >
					<ul class="sliderbox">
					
						<li><a href=""><img src="images/slider21.jpg" alt="1"></a></li>
						<li><a href=""><img src="images/slider22.jpg" alt="2"></a></li>
						<li><a href=""><img src="images/slider23.jpg" alt="3"></a></li>
					</ul>
					
				</div>
			</div>
		</div>
				

				<div class="ui two column grid">
					<div class="column">
						<div class="ui fluid form segment" style="background:rgba(255,255,255,0.2)">
							<h2 class="alt" style="font-size: 40px;">
								Find <strong>cars</strong> you like:<br />
							</h2>
							<br /> <select onchange=changeselect1(this.value) name=s1
								style="width: 350px;margin:0 auto;font-size:25px;font-family:'Source Sans Pro', sans-serif;">
								<option selected>==Choose Makes==</option>
								<option value='Acura'>Acura</option>
								<option value='Audi'>Audi</option>
								<option value='BMW'>BMW</option>
								<option value='Buick'>Buick</option>
								<option value='Cadillac'>Cadillac</option>
								<option value='Chevrolet'>Chevrolet</option>
								<option value='Chrysler'>Chrysler</option>
								<option value='Dodge'>Dodge</option>
								<option value='Ferrari'>Ferrari</option>
								<option value='Ford'>Ford</option>
								<option value='GMC'>GMC</option>
								<option value='Honda'>Honda</option>
								<option value='Infiniti'>Infiniti</option>
								<option value='Jeep'>Jeep</option>
								<option value='Lamborghini'>Lamborghini</option>
								<option value='Land Rover'>Land Rover</option>
								<option value='Lexus'>Lexus</option>
								<option value='Lincoln'>Lincoln</option>
								<option value='Mercedes-Benz'>Mercedes-Benz</option>
								<option value='MINI'>MINI</option>
								<option value='Mitsubishi'>Mitsubishi</option>
								<option value='Nissan'>Nissan</option>
								<option value='Porsche'>Porsche</option>
								<option value='Subaru'>Subaru</option>
								<option value='Tesla'>Tesla</option>
								<option value='Toyota'>Toyota</option>
								<option value='Volkswagen'>Volkswagen</option>
								<option value='Volvo'>Volvo</option>
							</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							
							<select name=s2
								style="width: 350px;margin:0 auto;font-size:25px;font-family:'Source Sans Pro', sans-serif;">
								<option selected style="font-family:'Source Sans Pro', sans-serif;">==Choose Models==</option>
							</select><br/>
							<div style="text-align:center">
								<button type="submit" class="button scrolly"
								style="width: 150px; height: 60px; margin-bottom: 40px; padding:0" onclick="loading()">
								<h3 style="color: #fff;font-size:25px">Search</h3>
								</button>
							</div>
							

						</div>

					</div>
					
					<div class="column">
						<div class="ui fluid form segment"  style="background:rgba(255,255,255,0.2)">
							<h2 class="alt" style="font-size: 40px">
								<strong>Models</strong> you may consider:
							</h2>
							<div style="text-align:center;margin-bottom:20px;padding-top:0px" id="box">
								<img src="images/tagcloud.jpg" style="width:450px;height:300px;margin-left:0;margin-top:0px">
							</div>
						</div>
					</div>
				</div>
				
				
				
				<br/>
					
			</div>
		
	</form>






</body>
</html>