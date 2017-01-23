package watchlist.model;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;


//A watchlist is composed of a watchlist ID, name, create date, and a list of stocks. 
//This class defines a watchlist's member variables and methods. 

public class Watchlist {
	
	private int watchlistID;
	private String name;
	private Date createDate;
	private ArrayList<Stock> stocks;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public ArrayList<Stock> getStocks() {
		return stocks;
	}
	public void setStocks(ArrayList<Stock> stocks) {
		this.stocks = stocks;
	}
	public int getWatchlistID() {
		return watchlistID;
	}
	public void setWatchlistID(int watchlistID) {
		this.watchlistID = watchlistID;
	}
	public void addStockToWatchlist(String symbol){
		Stock s = new Stock();
		s.setSymbol(symbol);
		stocks.add(s);
	}
}
