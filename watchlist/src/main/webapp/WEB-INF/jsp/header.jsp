<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<c:url value="/css/site.css" var="cssURL" />
	<link rel="stylesheet" type="text/css" href="${cssURL}">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- <script src="javascript/jquery-2.2.2.js"></script>
    <script src="javascript/jquery.validate.js"></script>
  	<script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script> 
  	<script src="javascript/validation.js"></script>  -->
</head>

<body>

<div id="content">
    <div class="container-fluid">
    <nav class="nav navbar-default col-sm-12">
    		<ul class="nav navbar-nav">
    			<li><a href="home">Home</a></li>
    			<li><a href="watchlists">Watchlists</a></li>
    		</ul>
    </nav>
    </div>
    <h1 id="pageTitle"><c:out value="${param.pageTitle}" /></h1>