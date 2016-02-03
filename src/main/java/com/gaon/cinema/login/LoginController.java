package com.gaon.cinema.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("login.do")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();
		logger.info("login.do Start");
		mav.setViewName("/login/login");
		return mav;
	}
	
}
