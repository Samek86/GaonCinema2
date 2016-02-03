package com.gaon.cinema.event;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@RequestMapping(value = "/event.do", method = RequestMethod.GET)
	public ModelAndView event() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "event");
		mav.setViewName("mainLayout");
		return mav;
	}
}
