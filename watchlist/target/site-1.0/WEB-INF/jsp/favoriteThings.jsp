<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Favorite Things</title>
		<script src="javascript/jquery-2.2.2.js"></script>
		<script src="javascript/jquery.validate.js"></script>
	</head>
	<c:import url="/WEB-INF/jsp/header.jsp">
	   <%--  <c:param name="pageTitle" value="My Favorite Things" /> --%>
	</c:import>
	<body>

<div id="content">
    <nav class="navbar navbar-default">
    	<div class="container-fluid">
    		<button class = "navbar-toggle nav-justified" data-toggle="collapse" data-target=".navHeaderCollapse">
    			Menu
   		 	</button>
			<div class="collapse navbar-collapse navHeaderCollapse">
    		<ul class="nav nav-justified">
    			<li><a href="home">Home</a></li>
    			<li><a href="favoriteThings">My Favorite Things</a></li>
    			<li><a href="funWithStocks">Fun With Stocks!</a></li>
    			<li><a href="contact">Contact Me</a></li>
    		</ul>
    		</div>	
    	    	
    	</div>
    </nav>
	<%-- <c:param name="pageTitle" value="My Favorite Things"/> --%>
    <h1 id="pageTitle">Favorite Things </h1>
	<div id="favoriteActivities">
	<h2>Other than programming and trading, I...</h2>
		<ul>
			<li>Hang out with friends and family</li>
			<li>Play sports (table tennis, basketball, soccer)</li>
			<li>Hike and do other things outside</li>
			<li>Play poker</li>
			<li>Play bananagrams and wordfeud</li>
			<li>Watch various T.V. shows and movies</li>
			<li>Listen to lots of music</li>
		</ul>
	</div>
	<div id="natParks" class="container-fluid row">
		<h2>National Parks:</h2>
			<div id="yellow" class="parks">
			<h6>Yellowstone National Park, </br>Northwest Wyoming/Southwest Montana</br>(Photo cred)</h6>
			<a href="https://www.nps.gov/yell/index.htm" target="_blank">
				<img id="yellowstone" src="img/yellowstone.jpg" class="img-responsive"/>
			</a>
			</div>
			<div id="sand" class="parks">
			<h6>Great Sand Dunes National Park</br> Saguache County, Colorado</h6>
			<a href="https://www.nps.gov/grsa/index.htm" target="_blank" >
				<img id="sandDunes" src="https://www.nps.gov/common/uploads/photogallery/imr/park/grsa/FB0FB3FA-155D-451F-67842C476C55A693/FB0FB3FA-155D-451F-67842C476C55A693-large.jpg" class="img-responsive"/>
			</a>
			</div>
	</div>
	<div id="favoriteBooks" >
	<h2>Books:</h2>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
	      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	     		<li data-target="#myCarousel" data-slide-to="1"></li>
	      		<li data-target="#myCarousel" data-slide-to="2"></li>
	      		<li data-target="#myCarousel" data-slide-to="3"></li>
	      		<li data-target="#myCarousel" data-slide-to="4"></li>
	      		<li data-target="#myCarousel" data-slide-to="5"></li>
	      		<li data-target="#myCarousel" data-slide-to="6"></li>
	      		<li data-target="#myCarousel" data-slide-to="7"></li>
		 	</ol> 
		 		<div class="carousel-inner" role="listbox">
		 		<div class="item active">
					<a href="https://en.wikipedia.org/wiki/Freakonomics" target="_blank">
						<img id="freak" src="https://images-na.ssl-images-amazon.com/images/I/51mb6DELsQL._SX330_BO1,204,203,200_.jpg"/>
					</a>
				</div>
				<div class="item">
					<a href="https://en.wikipedia.org/wiki/Reminiscences_of_a_Stock_Operator" target="_blank">
						<img id="roaso" src="https://images-na.ssl-images-amazon.com/images/I/61m0lVmBNLL._SX394_BO1,204,203,200_.jpg"/>
					</a>
				</div>	
				<div class="item">	
					<a href="https://en.wikipedia.org/wiki/Extraordinary_Popular_Delusions_and_the_Madness_of_Crowds" target="_blank">
						<img id="crowds" src="https://images-na.ssl-images-amazon.com/images/I/51WcufjcOpL._SX398_BO1,204,203,200_.jpg"/>
					</a>
				</div>
				<div class="item">	
					<a href="https://www.ted.com/talks/bruce_bueno_de_mesquita_predicts_iran_s_future?language=en" target="_blank">
						<img id="predictioneer" src="https://images-na.ssl-images-amazon.com/images/I/512Tb60u71L._SX327_BO1,204,203,200_.jpg"/>
					</a>
				</div>
				<div class="item">	
					<a href="https://en.wikipedia.org/wiki/The_Art_of_War" target="_blank">
						<img id="artOfWar" src="https://images-na.ssl-images-amazon.com/images/I/41%2BK7kV3iTL._SX325_BO1,204,203,200_.jpg"/>
					</a>
				</div>
				<div class="item">	
					<a href="https://en.wikipedia.org/wiki/The_Da_Vinci_Code" target="_blank">
						<img id="daVinci" src="https://images-na.ssl-images-amazon.com/images/I/41cXJLj3BkL._SX277_BO1,204,203,200_.jpg"/>
					</a>
				</div>
				<div class="item">	
					<a href="http://www.independent.co.uk/arts-entertainment/books/reviews/crashed-and-byrned-by-tommy-byrne-with-mark-hughes-929753.html" target="_blank">
						<img id="crash" src="https://images-na.ssl-images-amazon.com/images/I/51%2BGPmtiL%2BL._SX325_BO1,204,203,200_.jpg"/>
					</a>
				</div>
				<div class="item">	
					<a href="https://en.wikipedia.org/wiki/Market_Wizards" target="_blank">
						<img id="wizards" src="https://images-na.ssl-images-amazon.com/images/I/51IE-eZrxTL._SX332_BO1,204,203,200_.jpg"/>
					</a>
				</div>	
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      		<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	      		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      		<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div id ="favoriteMedia">
		<h2>Best Album of 2016: Malibu by Anderson .Paak</h2>
		<iframe width="80%" height="315" scrolling="no" frameborder="3" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/185477834&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>
		<h2>Movie watched within the past year: <i>The Barkley Marathons</i> </h2>
		<iframe width="80%" height="330" src="https://www.youtube.com/embed/28UzhF3uvME" frameborder="0" allowfullscreen></iframe>
	</div>
	</div> 

<p class="footer"> Aaron Shafron 2016</br>
Hosted by Heroku, Domain through NameCheap
</p>

</body>

</html>
	
<%-- <c:import url="/WEB-INF/jsp/footer.jsp" /> --%>