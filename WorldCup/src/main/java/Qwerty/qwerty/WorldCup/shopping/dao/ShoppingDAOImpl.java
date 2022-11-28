package Qwerty.qwerty.WorldCup.shopping.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import Qwerty.qwerty.WorldCup.shopping.vo.ShoppingVO;

@Repository("shoppingDAO")
public class ShoppingDAOImpl implements ShoppingDAO {
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List listItems(Map pagingMap) throws DataAccessException {
		List itemLists = null;
		itemLists = sqlSession.selectList("mapper.shopping.listItems", pagingMap);
		return itemLists;
	}


	@Override
	public int totItems() throws DataAccessException {
		int totItems = 0;
		totItems = sqlSession.selectOne("mapper.shopping.selectTotArticles");
		return totItems;
	}


	@Override
	public int categoryItems(int category) throws DataAccessException {
		int categoryItems = 0;
		categoryItems = sqlSession.selectOne("mapper.shopping.selectTotArticles", category);
		return categoryItems;
	}

}
