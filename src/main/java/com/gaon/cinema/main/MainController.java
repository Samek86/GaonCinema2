package com.gaon.cinema.main;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/mainLayout.do", method = RequestMethod.GET)
	public ModelAndView mainLayout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		String mainPage = request.getParameter("mainPage");
		if(mainPage == null) { mainPage = "main"; }
		mav.addObject("mainPage", mainPage);
		mav.setViewName("mainLayout");
		return mav;
	}
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "main");
		mav.setViewName("mainLayout");
		return mav;
	}
}
