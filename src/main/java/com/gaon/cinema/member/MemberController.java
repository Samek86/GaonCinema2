package com.gaon.cinema.member;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public ModelAndView member(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String id = (String)session.getAttribute("NowUser");
		MemberDTO dto = new MemberDTO();
		dto.setUserid(id);
		dto=dao.dbmember(dto);
		
		String year = new SimpleDateFormat("yyyy").format(dto.getBirth());
		String month = new SimpleDateFormat("MM").format(dto.getBirth());
		String day = new SimpleDateFormat("dd").format(dto.getBirth());
		
		mav.addObject("year", year);
		mav.addObject("month", month);
		mav.addObject("day", day);
		mav.addObject("member", dto);
		mav.addObject("page", "member");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	@RequestMapping("/memberPreEdit.do")
	public ModelAndView preedit(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String id = (String)session.getAttribute("NowUser");
		MemberDTO dto = new MemberDTO();
		dto.setUserid(id);
		dto=dao.dbmember(dto);
		
		String year = new SimpleDateFormat("yyyy").format(dto.getBirth());
		String month = new SimpleDateFormat("MM").format(dto.getBirth());
		String day = new SimpleDateFormat("dd").format(dto.getBirth());
		
		mav.addObject("year", year);
		mav.addObject("month", month);
		mav.addObject("day", day);
		mav.addObject("member", dto);
		mav.addObject("page", "memberPreEdit");
		mav.setViewName("mainLayout");
		return mav;
	}
	@RequestMapping("/memberDelete.do")
	public ModelAndView memberDelete(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String id = (String)session.getAttribute("NowUser");
		MemberDTO dto = new MemberDTO();
		dto.setUserid(id);
		int ok = dao.dbDelete(dto);
		if(ok == 1){
			session.setAttribute("ok","이용해주셔서 감사합니다.");
			session.removeAttribute("NowUser"); 
			mav.addObject("page", "main");
			mav.setViewName("mainLayout");
			return mav;
		}
		mav.setViewName("redirect:/main.do");
		return mav;
	}
	
}
