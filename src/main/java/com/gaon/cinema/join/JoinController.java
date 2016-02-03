package com.gaon.cinema.join;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class JoinController {
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public ModelAndView join(){
		logger.info("join");
		ModelAndView mav = new ModelAndView();
		mav.addObject("page","join");
		mav.setViewName("MainLayout");
		
		return mav;
	}
}
