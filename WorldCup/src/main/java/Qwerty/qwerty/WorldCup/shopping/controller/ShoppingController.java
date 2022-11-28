package Qwerty.qwerty.WorldCup.shopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface ShoppingController {
	
	public ModelAndView listItems(HttpServletRequest request,
			HttpServletResponse response) throws Exception;
}
