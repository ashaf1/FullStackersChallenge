package watchlist.model;


import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

//This class is the Java Database Connectivity (JDBC) implementation of the WatchlistDAO interface. Using a 
//JdbcTemplate object as a member variable, this class is instantiated by spring on startup due to the @Component annotation
//and the @Autowired annotation above the constructor argument. 
@Component
public class JDBCWatchlistDAO implements WatchlistDAO {
	
	JdbcTemplate jdbcTemplate;
	
//	Jdbc looks for a connection called dataSource. This can be found in springmvc-servlet.xml and is defined as a spring 
//	managed bean.
	@Autowired
	public JDBCWatchlistDAO(DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void saveWatchlist(String name) {
		String sqlSaveWatchlist = "Insert INTO Watchlists(name) "
								+ "Values(?)";
		jdbcTemplate.update(sqlSaveWatchlist, name);
		
	}

	@Override
	public void deleteWatchlist(int watchlistID) {
		String sqlDeleteStocksFromWatchlist = "DELETE From Stocks where watchlist_id = ?";
		jdbcTemplate.update(sqlDeleteStocksFromWatchlist, watchlistID);
		
		String sqlDeleteWatchlist = "DELETE From Watchlists where watchlist_id = ?";
		jdbcTemplate.update(sqlDeleteWatchlist, watchlistID);
	}

	@Override
	public List<Watchlist> getListOfWatchlists() {
		List<Watchlist> watchlists = new ArrayList<Watchlist>();
		String sqlGetAllWatchlists = "Select * from Watchlists";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllWatchlists);
		
		while(results.next()){
			Watchlist w = getWatchlistFromResults(results);
			watchlists.add(w);
		}
		return watchlists;
	}

	@Override
	public ArrayList<Stock> getStocksInWatchlistByName(String watchlistName) {
		ArrayList<Stock> stocks = new ArrayList<>();
		String sqlGetStocksInWatchlist = "Select * from Stocks "
										+ "join Watchlists on Watchlists.watchlist_id = Stocks.watchlist_id "
										+ "Where Watchlists.name = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetStocksInWatchlist, watchlistName);
		while(results.next()){
			Stock s = new Stock();
			s.setStockID(results.getInt("stock_id"));
			s.setSymbol(results.getString("symbol"));
			s.setWatchlistID(results.getInt("watchlist_id"));
			stocks.add(s);
		}
		return stocks;
	}
	@Override
	public ArrayList<Stock> getStocksInWatchlistByID(int watchlistID) {
		ArrayList<Stock> stocks = new ArrayList<>();
		String sqlGetStocksInWatchlist = "Select symbol from Stocks "
										+ "join Watchlists on Watchlists.watchlist_id = Stocks.watchlist_id "
										+ "Where Watchlists.watchlist_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetStocksInWatchlist, watchlistID);
		while(results.next()){
			Stock s = new Stock();
			s.setStockID(results.getInt("stock_id"));
			s.setSymbol(results.getString("symbol"));
			stocks.add(s);
		}
		return stocks;
	}
	@Override
	public void addStockToWatchList(Stock stock) {
		String sqlAddStockToWatchList = "Insert INTO Stocks(symbol, watchlist_id) "
				                      + "Values(?, ?)";
		jdbcTemplate.update(sqlAddStockToWatchList, stock.getSymbol(), stock.getWatchlistID());
		
	}
	@Override
	public int getWatchlistIDFromName(String name){
		int watchlistID = 0;
		String sqlGetWatchlistIDFromName = "Select watchlist_id from Watchlists "
										  + "Where name = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetWatchlistIDFromName, name);
		if(results.next()){
			watchlistID = results.getInt("watchlist_id"); 
		}
		return watchlistID;
	}
	@Override
	public void updateWatchlistName(String currentName, String newName){
		String sqlUpdateWatchlistName = "Update Watchlists "
									  + "Set name = ? "
									  + "Where name = ?";
		jdbcTemplate.update(sqlUpdateWatchlistName, newName, currentName);
	}
	public Watchlist getWatchlistByID(int id){
		String sqlGetWatchlistByID = "Select * from Watchlists "
									+ "Where id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetWatchlistByID, id);
		Watchlist w = new Watchlist();
		if(results.next()){
			w = getWatchlistFromResults(results);
		}
		return w;
	}
	
	@Override
	public void deleteStockFromWatchlist(String symbol, int watchlistID) {
	String sqlDeleteStockToWatchList = "Delete From Stocks "
                                     + "Where watchlist_id = ?";
	jdbcTemplate.update(sqlDeleteStockToWatchList, watchlistID);
		
	}
	
	private Watchlist getWatchlistFromResults(SqlRowSet results){
		Watchlist w = new Watchlist();
		
		w.setCreateDate(results.getDate("date_created"));
		w.setName(results.getString("name"));
		w.setWatchlistID(results.getInt("watchlist_id"));
		
		return w;
	}

	
}
