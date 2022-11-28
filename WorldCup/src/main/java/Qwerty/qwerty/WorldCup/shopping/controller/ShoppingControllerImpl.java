package Qwerty.qwerty.WorldCup.shopping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Qwerty.qwerty.WorldCup.shopping.Service.ShoppingService;

@Controller("shoppingController")
public class ShoppingControllerImpl implements ShoppingController {

	@Autowired
	private ShoppingService shoppingService;

	@Override
	@RequestMapping(value = "/shop.do", method = RequestMethod.GET)
	public ModelAndView listItems(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();	
		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt((_section == null ? "1" : _section));
		int pageNum = Integer.parseInt((_pageNum == null ? "1" : _pageNum));
		String _category = request.getParameter("category");
		System.out.println(section + "  " + pageNum + " ¼½¼Ç pg ³Ñ");
		Map<String, Integer> pagingMap = new HashMap<String, Integer>();
		int totItems;
		if(_category != null) {
			int category = Integer.parseInt(_category);
			pagingMap.put("category", category);
			mav.addObject("category", category);
			totItems = shoppingService.categoryItems(category);
		}else {
			totItems = shoppingService.totItems();
		}
		pagingMap.put("section", section);
        pagingMap.put("pageNum", pageNum);
		List articleList = shoppingService.itemLists(pagingMap);
		System.out.println(totItems);
		mav.addObject("totArticles" ,totItems);
		mav.addObject("section", section);
		mav.addObject("pageNum", pageNum);
		mav.addObject("articleList", articleList);
		mav.setViewName(viewName);
		
		return mav;
	}

}
