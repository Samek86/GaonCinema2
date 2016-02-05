package com.gaon.cinema.admin;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gaon.cinema.theater.TheaterDTO;

@Controller
public class AdminController {
	
	@Autowired
	private AdminDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	/* 회원관리 목록보기 */
	@RequestMapping(value = "/adminMemberList.do", method = RequestMethod.GET)
	public ModelAndView adminMemberList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "adminMemberList");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	/* 영화관리 목록보기 */
	@RequestMapping(value = "/adminMovieList.do", method = RequestMethod.GET)
	public ModelAndView adminMovieList() {
		ModelAndView mav = new ModelAndView();
		
		List<TheaterDTO> list = dao.dbSelectTheaterAll();
		mav.addObject("list", list);
		
		mav.addObject("page", "adminMovieList");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	/* 영화관리 영화관 추가하기 */
	@RequestMapping(value = "/adminMoviePreInsert.do", method = RequestMethod.GET)
	public ModelAndView adminMoviePreInsert() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("page", "adminMovieInsert");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	/* 예약관리 목록보기 */
	@RequestMapping(value = "/adminReservationList.do", method = RequestMethod.GET)
	public ModelAndView adminReservationList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "adminReservationList");
		mav.setViewName("mainLayout");
		return mav;
	}
}
