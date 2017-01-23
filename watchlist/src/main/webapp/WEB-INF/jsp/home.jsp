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
	</c:import>
	<body>

    <h1 id="pageTitle">Home</h1>
    
    <h3><a href="watchlists">View Watchlists</a></h3>
    
    <c:import url="/WEB-INF/jsp/footer.jsp" />