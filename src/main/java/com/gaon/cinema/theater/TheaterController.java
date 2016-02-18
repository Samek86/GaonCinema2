package com.gaon.cinema.theater;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TheaterController {
	
	@Autowired
	private TheaterDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(TheaterController.class);
	
	/* 영화관 메인 */
	@RequestMapping(value = "/theater.do", method = RequestMethod.GET)
	public ModelAndView theater(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		
		List<TheaterDTO> cnameList = dao.dbSelectCname();
		mav.addObject("cnameList", cnameList);
		
		mav.addObject("page", "theater");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	/* 도시 이름 보여주기 */
	@RequestMapping(value = "/theaterSelectLname.do", method = RequestMethod.GET)
	public void theaterSelectLname(HttpServletResponse response, @RequestParam String cname) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			System.out.println(cname);
			List<String> list = dao.dbSelectLname(cname);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"lname" + "\":" + "\"" + list.get(i) + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 전체 영화관 소개 가져오기 */
	@RequestMapping(value = "/theaterSelectIntroAll.do", method = RequestMethod.GET)
	public void theaterSelectIntroAll(HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			/* JSON 시작 */
			String json = "";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 도시 영화관 소개 가져오기 */
	@RequestMapping(value = "/theaterSelectIntroByCname.do", method = RequestMethod.GET)
	public void theaterSelectIntroByCname(HttpServletResponse response, @RequestParam String cname) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			/* JSON 시작 */
			String json = "";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 지역 영화관 소개 가져오기 */
	@RequestMapping(value = "/theaterSelectIntroByLname.do", method = RequestMethod.GET)
	public void theaterSelectIntroByLname(HttpServletResponse response, @RequestParam String lname) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			/* JSON 시작 */
			String json = "";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
}