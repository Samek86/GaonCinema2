package com.gaon.cinema.member;

import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("/member.do")
	public ModelAndView member(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("nowuser");
		MemberDTO dto = dao.dbmember(id);
		
		mav.addObject("page", "member");
		mav.setViewName("mainLayout");
		return mav;
	}
}
