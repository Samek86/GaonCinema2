package com.gaon.cinema.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/admin.do", method = RequestMethod.GET)
	public ModelAndView admin() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "admin");
		mav.setViewName("mainLayout");
		return mav;
	}
}
