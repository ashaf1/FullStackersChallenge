<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Home</title>
		<script src="javascript/jquery-2.2.2.js"></script>
		<script src="javascript/jquery.validate.js"></script>
	</head>
	<c:import url="/WEB-INF/jsp/header.jsp">
	    <%-- <c:param name="pageTitle" value="Welcome!" /> --%>
	</c:import>
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
    <%-- <c:param name="pageTitle" value="Home"/> --%>
    <h1 id="pageTitle">Home</h1>
<div id="welcome">
	<h2 class="headerText">Here's a bit about me:</h2>
</div>

<div id="doingNow">
	<h3>What I'm doing now:</h3>
</div>
<div id="doingNowP">
	<p>
	I am currently a Java bootcamp student at Tech Elevator in Cleveland, Ohio. Tech Elevator is a 14-week  
	intensive program focused on developing the skills necessary to create dynamic web-based applications using 
	 Java, Spring MVC, HTML, CSS, JavaScript, JQuery, AJAX, JavaServer Pages (JSP), Apache Tomcat, PostgreSQL, Java  
	Database Connectivity (JDBC), JUnit testing, unix command line, the Eclipse IDE, prevention against SQL injection, 
	cross-site scripting, cross-site request forgery, and lots of other things.   
	</p>
</div>
<div id="did">
	<h3>What I've done:</h3>
</div>
<div id="didP">
	<p>
	- After reading <a href="freakonomics.com"><i>Freakonomics</i></a> during my freshman year of high school, I fell in love with economics. 
	     
	</p>
	<p>
	- Fall of my freshman year (2009), I bought my first stock. Since then, I have traded equities, options, futures, and currencies using 
	fundamental as well as quantitative methods.   
	</p>
	<p>
	- Summer entering my junior year, I wrote a letter to a local hedge fund manager in the hopes that I would gain some insight into the
	industry. Since then, I have forged an invaluable relationship with everyone at the fund. I'm incredibly grateful to have had the 
	opportunity to intern there the past few summers analyzing micro-large cap bank stocks and developing models to predict mergers and acquisitions
	within the banking industry. 	
	</p>
	<p>
	- Junior year, I founded the Shaker Heights High School Investment Club. I organized an intra-club stock market game through <a href="www.marketwatch.com">
	Marketwatch's</a> stock simulator. I also brought in members of the local financial community to speak with the club about the industry.              
	</p>
	<p>
	- After graduating with honors from Shaker in 2013, I attended Miami University (OH) as an economics major for one year. The classes I
	found most rewarding were formal (deductive) logic, econometrics, and visual basic. Due to a death in my family, I decided to take some 
	time off of school.
	</p>
	<p>
	- During my time off, I worked as a valet. I gained valuable experience working with a diverse team of valets in order to achieve the 
	common goal of customer satisfaction. I also got to drive some pretty cool cars including a BMW i8, so that was awesome, too! 
	</p>
	<p>
	- As I approached a decision regarding whether or not to re-enroll in school, I decided to attend Tech Elevator because 
	it provides a high-quality foundation to programming that is both time and financially cost-efficient. I plan on completing my 
	degree(s) at some point in the future.
	</p>
</div>	
</div> 

<p class="footer"> Aaron Shafron 2016</br>
Hosted by Heroku, Domain through NameCheap
</p>

</body>

<%-- <c:import url="/WEB-INF/jsp/footer.jsp" /> --%>