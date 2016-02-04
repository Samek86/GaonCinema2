package com.gaon.cinema.member;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.ServletContext;
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
	@Autowired
	private ServletContext application;
	
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
	public ModelAndView memberPreEdit(HttpServletRequest request, HttpSession session) {
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
	
	@RequestMapping("/memberEdit.do")
	public ModelAndView memberEdit(MemberDTO dto,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		try{
		String path=application.getRealPath("resources/upload");
		String img=dto.getUpload().getOriginalFilename();
		logger.info("넘어온 파일=" + img);
		//MultipartFile클래스는 파일이름만 기억=> upload폴더로 전달
		logger.info("path="+path);
		File file= new File(path, img);
		dto.getUpload().transferTo(file);
		dto.setImg_file(img);
		logger.info("넘어온 파일=" + dto.getUpload());
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		System.out.println(year + "-" + month + "-" + day);
		java.util.Date tempDate;
		tempDate = sdf.parse(year + "-" + month + "-" + day);
		java.sql.Date date = new java.sql.Date(tempDate.getTime());
		dto.setBirth(date);
		
		dao.dbEdit(dto);
		
		year = new SimpleDateFormat("yyyy").format(dto.getBirth());
		month = new SimpleDateFormat("MM").format(dto.getBirth());
		day = new SimpleDateFormat("dd").format(dto.getBirth());
		
		mav.addObject("year", year);
		mav.addObject("month", month);
		mav.addObject("day", day);
		mav.addObject("member", dto);
		mav.addObject("page", "member");
		mav.setViewName("mainLayout");
		}catch(Exception e){ e.printStackTrace();}
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
			mav.setViewName("redirect:/main.do");
			return mav;
		}
		mav.setViewName("redirect:/main.do");
		return mav;
	}

}
