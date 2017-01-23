<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Fun With Stocks!</title>
	<script src="javascript/jquery-2.2.2.js"></script>
    <script src="javascript/jquery.validate.js"></script>
  	<script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script> 
  	<script src="javascript/validation.js"></script> 
	</head>
	<c:import url="/WEB-INF/jsp/header.jsp">
	    <%-- <c:param name="pageTitle" value="Fun With Stocks!" /> --%>
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
    <%-- <c:param name="pageTitle" value="Fun With Stocks!"/> --%>
    <h1 id="pageTitle">Fun With Stocks!</h1>
    <div class="container-fluid row col-sm-12">
	<h4>Notes of caution:</h4>
	
	<p class ="col-sm-3">
	- Data is limited to prices between August 14, 2006 and July 15, 2016 because having more than 10,000 rows in a database can be quite expensive.
	</p>
	<p class ="col-sm-5">
	- If the results in the table contain zeroes, you most likely selected a weekend or a non-trading weekday. I'm currently
	trying to build functionality to handle this issue. So if a weekend or non-trading day is selected, it will automatically 
	grab the most recent trading day's data. Again, this will be added to Fun With Stocks! version 1.1.
	</p>
	<p class ="col-sm-2">
	- Data for Apple is adjusted based on the 7-1 stock split that occurred in June 2014
	</p>
	<p class ="col-sm-2">
	-You can select one security from either category or one from both.
    </p>
   
   	</div>
   	<div class="form-group container-fluid">
	<form id ="form" action="funWithStocks" method="POST">
		<div id="dateInput" class="row">
			<label>Start Date (yyyy-mm-dd, yyyy/mm/dd... use date selector in Chrome)</label></br>
			<input type="date" name="begin" id="begin" min="2006-08-14" max="2016-07-15" required /></br>
			<label>End Date (yyyy-mm-dd, yyyy/mm/dd... use date selector in Chrome)</label></br>
			<input type="date" name="end" id="end" min="2006-08-14" max="2016-07-15" required/>
		</div>
		<div id="selection1">	
			<div id="sel1Input" class="row"> 
			<label for ="stockName1">Security X:</label>&nbsp;&nbsp;
				<input type="radio" name="stockName1" value="SnP_500"/><label>S&P 500</label>
				<input type="radio"	 name="stockName1" value="Apple"/><label>Apple</label>
				<input type="radio" name="stockName1" value="Microsoft"/><label>Microsoft</label>
				<input type="radio" name="stockName1" value="Oracle"/><label>Oracle</label>
			</div>
		</div>
		<div id="selection2">
			<div id="sel2Input" class="row">
			<label for="stockName2">Security Y:</label>&nbsp;&nbsp;
				<input type="radio" name="stockName2" value="SnP_500"/><label>S&P 500</label>
				<input type="radio"	 name="stockName2" value="Apple"/><label>Apple</label>
				<input type="radio" name="stockName2" value="Microsoft"/><label>Microsoft</label>
				<input type="radio" class="btn btn-info" name="stockName2" value="Oracle"/><label>Oracle</label>
			</div>	
		</div>
		<div id = "submitButton">
			<input type ="submit" id="sumbitButton" name ="Submit"/>
		</div>
	</form>
	</div>
	<h3>Results</h3>
	<table id="results" class ="table-inverse table-responsive col-xs-12">
	<c:choose>
		<c:when test="${(param.stockName1 != null && param.stockName2 == null) || (param.stockName1 == null && param.stockName2 != null)}">
			
				<tr>
					<th>Name</th>
					<th>Begin Date</th>
					<th>End Date</th>
					<th>Begin Close</th>
					<th>End Close</th>
					<th>Max Close</th>
					<th>Min Close</th>
					<th>Avg Volume</th> 
					<th>Max Volume</th>
					<th>Min Volume</th>
					<th>Dollar Change</th>
					<th>Percentage Change</th>
					<th>Standard Deviation</th>
				</tr>
				
				<tr>
					<c:choose>
						<c:when test="${param.stockName1 == null}">
							<td>${param.stockName2}</td>
						</c:when>
						<c:otherwise>
							<td>${param.stockName1}</td>
						</c:otherwise>
					</c:choose>
					<td>${param.begin}</td>
					<td>${param.end}</td>
					<td>$${data.beginClose}</td>
					<td>$${data.endClose}</td>
					<td>$${data.maxPrice}</td>
					<td>$${data.minPrice}</td>
					<td>${data.avgVolume}</td>
					<td>${data.maxVolume}</td>
					<td>${data.minVolume}</td>
					<td>$${data.dollarChange}</td>
					<td>${data.percChange}%</td>
					<td>$${data.stdDeviation}</td>
				</tr>
			</c:when>
		<c:when test="${param.stockName1 != null && param.stockName2 != null}">

			<tr>
				<th>Security Y</th>
				<th>Security X</th>
				<th>Begin Date</th>
				<th>End Date</th>
				<th>Correlation</th>
				<th>Simple Regression Formula</th>
			</tr>
			
			<tr>
				<td>${param.stockName2}</td>
				<td>${param.stockName1}</td>
				<td>${param.begin}</td>
				<td>${param.end}</td>
				<td>${data.correlation}</td>
				<td>Estimated ${param.stockName2} = ${data.yIntercept} + ${data.regCoef}(${param.stockName1} price) + e</td>
			</tr>
		</c:when>
		<c:otherwise>
			<tr>Please make a selection</tr>
		</c:otherwise>
	</c:choose>	
	</table>

</div> 

<p class="footer"> Aaron Shafron 2016</br>
Hosted by Heroku, Domain through NameCheap
</p>

</body>

</html>
	
<%-- <c:import url="/WEB-INF/jsp/footer.jsp" /> --%>