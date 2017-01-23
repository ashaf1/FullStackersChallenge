package watchlist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import watchlist.model.JDBCWatchlistDAO;
import watchlist.model.Stock;
import watchlist.model.Watchlist;

//@Transactional annotation makes it so each database transaction in the controller can be rolled back if specified.
@Transactional

//Defines current class a controller.
@Controller

//@Component annotation tells Spring to automatically create an instance of the watchlist controller when spring starts up. 
//Spring dependency injection. 
@Component

//Session attributes are kept, in this case, to pass collections or variables across http requests. 
@SessionAttributes({"watchlists", "watchlistName", "stocks", "watchlistID"})
public class WatchlistController {
	
	private JDBCWatchlistDAO jdbcWatchlistDAO;
//	@Autowired annotation is used in conjunction with @Component annotation on the constructor of the class
//	being automatically injected into Spring. This controller creates an instance of our Data Access Object 
//	on startup as is shown in the constructor of the WatchlistController class. 
	@Autowired
	public WatchlistController(JDBCWatchlistDAO jdbcWatchlistDAO){
		this.jdbcWatchlistDAO = jdbcWatchlistDAO;
	}
	
	@RequestMapping({"/", "/home"})
	public String showHomePage(){
		return "home";
	}

	@RequestMapping(path="/watchlists", method=RequestMethod.GET)
	public String showWatchlistsPage(ModelMap model){
//		Add list of watchlists to the model to be displayed on watchlists.jsp page. 
		model.put("watchlists", jdbcWatchlistDAO.getListOfWatchlists());
		return "watchlists";
	}
	
	@RequestMapping(path="/watchlists", method=RequestMethod.POST)
	public String createANewWatchList(ModelMap model, 
									  @RequestParam ("name")String name,
									  RedirectAttributes redirectAttributes){
//		Save watchlist. Redirect to view stocksInWatchlist.jsp.
//		Redirect attributes are necessary to access and display name of the watchlist after the redirect. 
		jdbcWatchlistDAO.saveWatchlist(name);
		redirectAttributes.addAttribute("name", name);
		redirectAttributes.addAttribute("watchlistID", jdbcWatchlistDAO.getWatchlistIDFromName(name));
		Watchlist w = new Watchlist();
		w.setName(name);
		w.setWatchlistID(jdbcWatchlistDAO.getWatchlistIDFromName(name));
//		Adding attributes to the model map to be accessed following redirect. 
		model.put("watchlistName", name);
		model.put("watchlistID", w.getWatchlistID());
		return "redirect:/stocksInWatchlist";
	}
	@RequestMapping(path="/stocksInWatchlist", method=RequestMethod.GET)
	public String viewStocksInWatchlist(ModelMap model, @RequestParam ("name") String watchlistName, 
										@RequestParam ("watchlistID") int watchlistID){
//		After requesting parameters from necessary to identify the stocks in each watchlist, 
//		add the current watchlist's name to the model to be accessed on stocksInWatchlist page. 
//		Add list of stocks in watchlist to the model. 
		model.put("watchlistName", watchlistName);
		model.put("stocks", jdbcWatchlistDAO.getStocksInWatchlistByName(watchlistName));
		return "stocksInWatchlist";
	}
	@RequestMapping(path="/stocksInWatchlist", method=RequestMethod.POST)
	public String redirectToAddStockToWatchlist(RedirectAttributes redirectAttributes, 
												ModelMap model, @RequestParam ("watchlistName")String watchlistName,
												@RequestParam (value="symbol", required=false) String symbol, 
												@RequestParam(value="deleteWatchlist", required=false) boolean deleteList,
												@RequestParam(value= "newName", required=false) String newName){
//		Get the current watchlist's id to add a stock to that watchlist. 
		int watchlistID = jdbcWatchlistDAO.getWatchlistIDFromName(watchlistName);
//		If the parameter boolean deleteList is passed as true in the request, delete the list, otherwise if 
//		the newName parameter is not a null value, then change the current watchlist's name to newName, 
//		and if neither of those happen, then create a stock object, and add that stock to the current watchlist.  
		if(deleteList){
			jdbcWatchlistDAO.deleteWatchlist(watchlistID);
			return "redirect:/watchlists";
		} else if(newName != null){
			jdbcWatchlistDAO.updateWatchlistName(watchlistName, newName);
			return "redirect:/watchlists";
		} else {
			Stock s = new Stock();
			s.setSymbol(symbol);
			s.setWatchlistID(watchlistID);
			jdbcWatchlistDAO.addStockToWatchList(s);
			redirectAttributes.addAttribute("name", watchlistName);
			redirectAttributes.addAttribute("watchlistID", watchlistID);
	
			return "redirect:/stocksInWatchlist";
		}
	}
	
}
