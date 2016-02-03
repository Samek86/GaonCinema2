package com.gaon.cinema.member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value = "/member.do", method = RequestMethod.GET)
	public ModelAndView member() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "member");
		mav.setViewName("mainLayout");
		return mav;
	}
}
