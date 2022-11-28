package Qwerty.qwerty.WorldCup.shopping.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

public interface ShoppingDAO {

	public List listItems(Map pagingMap) throws DataAccessException;
	public int totItems() throws DataAccessException;
	public int categoryItems(int category) throws DataAccessException;
}
