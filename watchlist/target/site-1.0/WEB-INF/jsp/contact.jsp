<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Contact Me</title>
		<script src="javascript/jquery-2.2.2.js"></script>
		<script src="javascript/jquery.validate.js"></script>
	</head>
	<c:import url="/WEB-INF/jsp/header.jsp">
	   <%--  <c:param name="pageTitle" value="Contact Me" /> --%>
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
    <%-- <c:param name="pageTitle" value="Contact Me"/> --%>
    <h1 id="pageTitle">Contact Me</h1>
	<h3>Email me at aaronshafron@gmail.com</h3>
	<h3>Connect with me on <a href="https://www.linkedin.com/in/aaronshafron" target="_blank">LinkedIn.</a></h3>
	<h3>See this code on <a href="https://github.com/ashaf1/myWebSite">Github.</a></h3>
	</div> 

<p class="footer"> Aaron Shafron 2016</br>
Hosted by Heroku, Domain through NameCheap
</p>

</body>

</html>
	
<%-- <c:import url="/WEB-INF/jsp/footer.jsp" /> --%>