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

    <h1 id="pageTitle">Stocks in ${watchlistName}</h1>
    <div class="container-fluid row col-sm-12">
	<table id="watchlist">
	<tr>
		<th>Stock</th>
	</tr>
	<c:forEach items="${stocks}" var="stock">
		<tr>
			<td>${stock.symbol}</td>
		</tr>
	</c:forEach>
</table>
<form action="stocksInWatchlist" method="POST">
	<label>Add a symbol: </label><input type="text" name="symbol" class="form-control"/>
	<input type="hidden" name="watchlistName" value="${watchlistName}"/>
	<%-- <input type="hidden" name="deleteWatchlist" value="${false}"/>
	<input type="hidden" name="renameWatchlist" value="${false}"/> --%>
	<button type="submit" class="btn btn-default">Submit</button>
</form>
<form action="stocksInWatchlist" method="POST">
	<input type="hidden" name="watchlistName" value="${watchlistName}"/>
	<input type="hidden" name="deleteWatchlist" value="${true}"/>
	<button type ="submit" class="btn btn-default">Delete Watchlist</button>
</form>
<form action="stocksInWatchlist" method="POST">
	<label>Rename watchlist to: </label><input type="text" name="newName" class="form-control"/>
	<input type="hidden" name="watchlistName" value="${watchlistName}"/>
	<button type="submit" class="btn btn-default">Submit</button>
</form>
	
<c:import url="/WEB-INF/jsp/footer.jsp" />