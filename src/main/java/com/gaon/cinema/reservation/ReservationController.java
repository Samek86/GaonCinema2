package com.gaon.cinema.reservation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@RequestMapping(value = "/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "reservation");
		mav.setViewName("mainLayout");
		return mav;
	}
}
