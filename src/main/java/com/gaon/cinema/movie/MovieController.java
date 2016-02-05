package com.gaon.cinema.movie;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieController {
	
	private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	
	@Autowired
	private MovieDAO dao;
	
	@RequestMapping(value = "/movie.do", method = RequestMethod.GET)
	public ModelAndView movie() {
		ModelAndView mav = new ModelAndView();
		List<MovieDTO> nowlist = dao.dbNowMovie();
		List<MovieDTO> nextlist = dao.dbNextMovie();
		mav.addObject("moviepage", "nowmovie");
		mav.addObject("nowmovie", nowlist);
		mav.addObject("nextmovie", nextlist);
		mav.addObject("page", "movie");
		mav.setViewName("mainLayout");
		return mav;
	}
	
}
