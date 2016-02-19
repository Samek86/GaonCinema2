package com.gaon.cinema.reservation;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

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
public class ReservationController {
	
	@Autowired
	ReservationDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	@RequestMapping(value = "/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation() {
		ModelAndView mav = new ModelAndView();
		
		List<ReservationShowDTO> movieList = dao.dbSelectMovieNameAgeAll();
		List<ReservationShowDTO> theaterCnameList = dao.dbSelectTheaterCnameAll();
		List<ReservationShowDTO> theaterLnameList = dao.dbSelectTheaterLname(theaterCnameList.get(0).getCname());
		List<ReservationShowDTO> dateList = dao.dbSelectDateAll();
		mav.addObject("movieList", movieList);
		mav.addObject("theaterCnameList", theaterCnameList);
		mav.addObject("theaterLnameList", theaterLnameList);
		mav.addObject("dateList", dateList);
		
		mav.addObject("page", "reservation");
		mav.setViewName("mainLayout");
		return mav;
	}//reservationMovie
	
	/* 영화 이름, 관람가 가져오기(전체) */
	@RequestMapping(value = "/reservationSelectMovieNameAgeAll.do", method = RequestMethod.GET)
	public void reservationSelectMovieNameAgeAll(HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectMovieNameAgeAll();
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"movie_id" + "\":" + "\"" + list.get(i).getMovie_id() + "\",";
				json = json + "\"name_k" + "\":" + "\"" + list.get(i).getName_k() + "\",";
				json = json + "\"age" + "\":" + "\"" + list.get(i).getAge() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 영화 이름, 관람가 가져오기(도시 OR 지역 OR 날짜) */
	@RequestMapping(value = "/reservationSelectMovieNameAge.do", method = RequestMethod.GET)
	public void reservationSelectMovieNameAge(HttpServletResponse response, ReservationShowDTO dto) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectMovieNameAge(dto);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"movie_id" + "\":" + "\"" + list.get(i).getMovie_id() + "\",";
				json = json + "\"name_k" + "\":" + "\"" + list.get(i).getName_k() + "\",";
				json = json + "\"age" + "\":" + "\"" + list.get(i).getAge() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 영화관 도시 이름 가져오기(전체) */
	@RequestMapping(value = "/reservationSelectTheaterCnameAll.do", method = RequestMethod.GET)
	public void reservationSelectTheaterCnameAll(HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectTheaterCnameAll();
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"cname" + "\":" + "\"" + list.get(i).getCname() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 영화관 도시 이름 가져오기(영화 OR 날짜) */
	@RequestMapping(value = "/reservationSelectTheaterCname.do", method = RequestMethod.GET)
	public void reservationSelectTheaterCname(HttpServletResponse response, ReservationShowDTO dto) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectTheaterCname(dto);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"cname" + "\":" + "\"" + list.get(i).getCname() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 영화관 지역 이름 가져오기(도시) */
	@RequestMapping(value = "/reservationSelectTheaterLname.do", method = RequestMethod.GET)
	public void reservationSelectTheaterLname(HttpServletResponse response, @RequestParam String cname) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectTheaterLname(cname);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"lname" + "\":" + "\"" + list.get(i).getLname() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 날짜 가져오기(전체) */
	@RequestMapping(value = "/reservationSelectDateAll.do", method = RequestMethod.GET)
	public void reservationSelectDateAll(HttpServletResponse response) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectDateAll();
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"mstartdate" + "\":" + "\"" + list.get(i).getMstartdate() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 날짜 가져오기(영화 OR 도시 OR 지역) */
	@RequestMapping(value = "/reservationSelectDate.do", method = RequestMethod.GET)
	public void reservationSelectDate(HttpServletResponse response, ReservationShowDTO dto) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectDate(dto);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"mstartdate" + "\":" + "\"" + list.get(i).getMstartdate() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
	
	/* 시간 가져오기(영화 AND 도시 AND 지역 AND 날짜) */
	@RequestMapping(value = "/reservationSelectHour.do", method = RequestMethod.GET)
	public void reservationSelectHour(HttpServletResponse response, ReservationShowDTO dto) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectHour(dto);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"tname" + "\":" + "\"" + list.get(i).getTname() + "\",";
				json = json + "\"mstarthour" + "\":" + "\"" + list.get(i).getMstarthour() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
}//ReservationController class END
