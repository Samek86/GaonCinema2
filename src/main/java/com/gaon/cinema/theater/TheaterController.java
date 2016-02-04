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
	
	@RequestMapping(value = "/theater.do", method = RequestMethod.GET)
	public ModelAndView theater(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		
		List<String> cnameList = dao.dbSelectCname();
		String cname = request.getParameter("cname") == null ? cnameList.get(0) : request.getParameter("cname");
		List<String> lnameList = dao.dbSelectLname(cname);
		mav.addObject("cnameList", cnameList);
		mav.addObject("lnameList", lnameList);
		
		mav.addObject("page", "theater");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	@RequestMapping(value = "/theaterAjax.do", method = RequestMethod.GET)
	public void theaterAjax(HttpServletRequest request, HttpServletResponse response) {
		try {
			List<String> cnameList = dao.dbSelectCname();
			String cname = request.getParameter("cname") == null ? cnameList.get(0) : request.getParameter("cname");
			List<String> lnameList = dao.dbSelectLname(cname);
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			String json = "{\"lname\":[";
			for(int i = 0; i < lnameList.size(); i++) {
				json = json + "{\"lname" + "\":" + "\"" + lnameList.get(i) + "\"}";
				if(i < lnameList.size() - 1) {
					json = json + ", ";
				}
			}
			json = json + "]}";
			System.out.println(json);
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	@RequestMapping(value = "/theaterSchedule.do", method = RequestMethod.GET)
	public ModelAndView theaterSchedule(@RequestParam String lname) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("lname", lname);
		
		mav.addObject("page", "theaterSchedule");
		mav.setViewName("mainLayout");
		return mav;
	}
}
