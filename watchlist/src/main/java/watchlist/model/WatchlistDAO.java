package watchlist.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

//Interface that outlines the functionality for a watchlist data access object to send/retrieve data. 
public interface WatchlistDAO {

	public void saveWatchlist(String name);
	public void deleteWatchlist(int watchlistID);
	public void addStockToWatchList(Stock stock);
	public void deleteStockFromWatchlist(String symbol, int watchlistID);
	public List<Watchlist> getListOfWatchlists();
	public ArrayList<Stock> getStocksInWatchlistByName(String watchlistName);
	public ArrayList<Stock> getStocksInWatchlistByID(int watchlistID);
	public int getWatchlistIDFromName(String watchlistName);
	public void updateWatchlistName(String currnetName, String newName);
}
