package com.gaon.cinema.movie;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieController {
	
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	
	@RequestMapping(value = "/movie.do", method = RequestMethod.GET)
	public ModelAndView movie() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "movie");
		mav.setViewName("mainLayout");
		return mav;
	}
}
