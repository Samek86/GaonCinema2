package com.gaon.cinema.qna;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnaController {
	
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	@RequestMapping(value = "/qna.do", method = RequestMethod.GET)
	public ModelAndView qna() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "qna");
		mav.setViewName("mainLayout");
		return mav;
	}
}
