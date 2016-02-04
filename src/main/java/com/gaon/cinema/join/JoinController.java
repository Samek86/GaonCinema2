package com.gaon.cinema.join;

import java.util.Date;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public ModelAndView join(
			@RequestParam("year") String year,
			@RequestParam("month") String month,
			@RequestParam("day") String day
			){
		JoinDTO dto = new JoinDTO();
		dto.setBirth(new Date(year + "/" + month + "/" + day));
		logger.info("birth="+dto.getBirth());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("page","join");
		mav.setViewName("mainLayout");
		return mav;
	}
}
