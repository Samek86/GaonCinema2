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
		List<String> cnameList = dao.dbSelectCname();
		mav.addObject("cnameList", cnameList);
		mav.addObject("page", "theater");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	/* AJAX 도시 이름 보여주기 */
	@RequestMapping(value = "/theaterAjaxSelectLname.do", method = RequestMethod.GET)
	public void theaterAjaxSelectLname(@RequestParam String cname, HttpServletResponse response) {
		try {
			List<String> list = dao.dbSelectLname(cname);
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
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
	
	/* AJAX 영화관 전체 목록 보여주기 */
	@RequestMapping(value = "/theaterAjaxSelectAll.do", method = RequestMethod.GET)
	public void theaterAjaxSelectAll(HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<TheaterDTO> list = dao.dbSelectAll();
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"theater_id" + "\":" + "\"" + list.get(i).getTheater_id() + "\",";
				json = json + "\"cname" + "\":" + "\"" + list.get(i).getCname() + "\",";
				json = json + "\"lname" + "\":" + "\"" + list.get(i).getLname() + "\",";
				json = json + "\"tname" + "\":" + "\"" + list.get(i).getTname() + "\",";
				json = json + "\"ttype" + "\":" + "\"" + list.get(i).getTtype() + "\",";
				json = json + "\"seatcount" + "\":" + "\"" + list.get(i).getSeatcount() + "\",";
				json = json + "\"mname" + "\":" + "\"" + list.get(i).getMname() + "\",";
				json = json + "\"mstarthour" + "\":" + "\"" + list.get(i).getMstarthour() + "\",";
				json = json + "\"mendhour" + "\":" + "\"" + list.get(i).getMendhour() + "\",";
				json = json + "\"price" + "\":" + "\"" + list.get(i).getPrice() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* AJAX 도시 영화관 전체 목록 보여주기 */
	@RequestMapping(value = "/theaterAjaxSelectAllByCname.do", method = RequestMethod.GET)
	public void theaterAjaxSelectAllByCname(@RequestParam String cname, HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<TheaterDTO> list = dao.dbSelectAllByCname(cname);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"theater_id" + "\":" + "\"" + list.get(i).getTheater_id() + "\",";
				json = json + "\"cname" + "\":" + "\"" + list.get(i).getCname() + "\",";
				json = json + "\"lname" + "\":" + "\"" + list.get(i).getLname() + "\",";
				json = json + "\"tname" + "\":" + "\"" + list.get(i).getTname() + "\",";
				json = json + "\"ttype" + "\":" + "\"" + list.get(i).getTtype() + "\",";
				json = json + "\"seatcount" + "\":" + "\"" + list.get(i).getSeatcount() + "\",";
				json = json + "\"mname" + "\":" + "\"" + list.get(i).getMname() + "\",";
				json = json + "\"mstarthour" + "\":" + "\"" + list.get(i).getMstarthour() + "\",";
				json = json + "\"mendhour" + "\":" + "\"" + list.get(i).getMendhour() + "\",";
				json = json + "\"price" + "\":" + "\"" + list.get(i).getPrice() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* AJAX 지역 영화관 전체 목록 보여주기 */
	@RequestMapping(value = "/theaterAjaxSelectAllByLname.do", method = RequestMethod.GET)
	public void theaterAjaxSelectAllByLname(@RequestParam String lname, HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<TheaterDTO> list = dao.dbSelectAllByLname(lname);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"theater_id" + "\":" + "\"" + list.get(i).getTheater_id() + "\",";
				json = json + "\"cname" + "\":" + "\"" + list.get(i).getCname() + "\",";
				json = json + "\"lname" + "\":" + "\"" + list.get(i).getLname() + "\",";
				json = json + "\"tname" + "\":" + "\"" + list.get(i).getTname() + "\",";
				json = json + "\"ttype" + "\":" + "\"" + list.get(i).getTtype() + "\",";
				json = json + "\"seatcount" + "\":" + "\"" + list.get(i).getSeatcount() + "\",";
				json = json + "\"mname" + "\":" + "\"" + list.get(i).getMname() + "\",";
				json = json + "\"mstarthour" + "\":" + "\"" + list.get(i).getMstarthour() + "\",";
				json = json + "\"mendhour" + "\":" + "\"" + list.get(i).getMendhour() + "\",";
				json = json + "\"price" + "\":" + "\"" + list.get(i).getPrice() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 영화관 스케쥴 */
	@RequestMapping(value = "/theaterSchedule.do", method = RequestMethod.GET)
	public ModelAndView theaterSchedule(@RequestParam String lname) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("lname", lname);
		
		mav.addObject("page", "theaterSchedule");
		mav.setViewName("mainLayout");
		return mav;
	}
}
