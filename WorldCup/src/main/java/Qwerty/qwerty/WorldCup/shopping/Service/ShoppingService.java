package Qwerty.qwerty.WorldCup.shopping.Service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

public interface ShoppingService {
	public List itemLists(Map pagingMap) throws DataAccessException;
	public int totItems() throws DataAccessException;
	public int categoryItems(int category) throws DataAccessException;
}
