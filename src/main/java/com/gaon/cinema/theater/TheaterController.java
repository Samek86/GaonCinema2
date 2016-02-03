package com.gaon.cinema.theater;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TheaterController {
	
	private static final Logger logger = LoggerFactory.getLogger(TheaterController.class);
	
	@RequestMapping(value = "/theater.do", method = RequestMethod.GET)
	public ModelAndView theater() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "theater");
		mav.setViewName("mainLayout");
		return mav;
	}
}
