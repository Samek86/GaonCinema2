package com.gaon.cinema.store;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreController.class);
	
	@RequestMapping(value = "/store.do", method = RequestMethod.GET)
	public ModelAndView store() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "store");
		mav.setViewName("mainLayout");
		return mav;
	}
}
