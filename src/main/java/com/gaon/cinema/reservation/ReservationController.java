package com.gaon.cinema.reservation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gaon.cinema.qna.QnaDTO;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@RequestMapping(value = "/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("movieList", dao.dbSelectMovieNameAge());
		mav.addObject("theaterCnameList", dao.dbSelectTheaterCname());
		
		mav.addObject("page", "reservation");
		mav.setViewName("mainLayout");
		return mav;
	}//reservationMovie
	
}//ReservationController class END
