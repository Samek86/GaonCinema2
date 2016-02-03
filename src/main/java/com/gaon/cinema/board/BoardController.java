package com.gaon.cinema.board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/board.do", method = RequestMethod.GET)
	public ModelAndView board() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "board");
		mav.setViewName("mainLayout");
		return mav;
	}
}
