package watchlist.model;


//This class defines the member variables of a stock as well as giving it getter and setter methods. 
public class Stock {

	private String symbol;
	private int stockID;
	private int watchlistID;

	public String getSymbol() {
		return symbol;
	}
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	public int getStockID() {
		return stockID;
	}
	public void setStockID(int stockID) {
		this.stockID = stockID;
	}
	public int getWatchlistID() {
		return watchlistID;
	}
	public void setWatchlistID(int watchlistID) {
		this.watchlistID = watchlistID;
	}
	
}
