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
		
		List<ReservationShowDTO> movieList = dao.dbSelectMovieNameAge();
		List<ReservationShowDTO> theaterCnameList = dao.dbSelectTheaterCname();
		List<ReservationShowDTO> theaterLnameList = dao.dbSelectTheaterLname("서울");
		mav.addObject("movieList", movieList);
		mav.addObject("theaterCnameList", theaterCnameList);
		mav.addObject("theaterLnameList", theaterLnameList);
		
		mav.addObject("page", "reservation");
		mav.setViewName("mainLayout");
		return mav;
	}//reservationMovie
	
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
	
	@RequestMapping(value = "/reservationSelectMovieNameAgeByTheaterCname.do", method = RequestMethod.GET)
	public void reservationSelectMovieNameAgeByTheaterCname(HttpServletResponse response, @RequestParam String cname) {
		try {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			List<ReservationShowDTO> list = dao.dbSelectMovieNameAgeByTheaterCname(cname);
			/* JSON 시작 */
			String json = "{\"list\":[";
			for(int i = 0; i < list.size(); i++) {
				json = json + "{\"name_k" + "\":" + "\"" + list.get(i).getName_k() + "\",";
				json = json + "\"age" + "\":" + "\"" + list.get(i).getAge() + "\"}";
				if(i < list.size() - 1) { json = json + ", "; }
			}
			json = json + "]}";
			/* JSON 끝 */
			out.print(json);
		} catch(Exception e) { e.printStackTrace(); }
	}
}//ReservationController class END
