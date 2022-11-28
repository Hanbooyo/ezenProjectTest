package Qwerty.qwerty.WorldCup.shopping.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import Qwerty.qwerty.WorldCup.shopping.dao.ShoppingDAO;

@Service("shoppingService")
public class ShoppingServiceImpl implements ShoppingService {
	@Autowired
	private ShoppingDAO shoppingDAO;

	@Override
	public List itemLists(Map pagingMap) throws DataAccessException{
		List itemLists = null;
		itemLists = shoppingDAO.listItems(pagingMap);	
		return itemLists;
	}

	@Override
	public int totItems() throws DataAccessException {
		int totItems = 0;
		totItems = shoppingDAO.totItems();
		return totItems;
	}

	@Override
	public int categoryItems(int category) throws DataAccessException {
		int categoryItems =0;
		categoryItems = shoppingDAO.categoryItems(category);
		return categoryItems;
	}

}
