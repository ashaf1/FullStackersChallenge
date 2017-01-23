<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	
	<script src="javascript/jquery-2.2.2.js"></script>
    <script src="javascript/jquery.validate.js"></script>
  	<script src="http://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.js "></script> 
  	<script src="javascript/validation.js"></script> 
	</head>
	<c:import url="/WEB-INF/jsp/header.jsp">
	</c:import>
	<body>

    <h1 id="pageTitle">Watchlists</h1>
    <div class="container-fluid row col-sm-12">
	<table id="potholeReport">
	<tr>
		<th>Watchlist Name</th>
		<th>Date/Time Created</th>
	</tr>
	<c:forEach items="${watchlists}" var="watchlist">
		<tr>
			<c:url var="updateWatchlistHref" value="/stocksInWatchlist">
				<c:param name="name">${watchlist.name}</c:param>
				<c:param name="watchlistID">${watchlist.watchlistID}</c:param>
			</c:url>
			<td id="watchlistName"><a href="${updateWatchlistHref}">${watchlist.name}</a></td>
			<td>${watchlist.createDate}</td>
		</tr>
	</c:forEach>
</table>

<form action="watchlists" method="POST">
	<label>Add a watchlist: </label><input type="text" name="name" class="form-control"/>
	<input type="submit" class="btn btn-default" value="Submit"/>
</form>
	
<c:import url="/WEB-INF/jsp/footer.jsp" />