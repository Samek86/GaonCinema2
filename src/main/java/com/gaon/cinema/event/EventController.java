package com.gaon.cinema.event;

import java.io.IOException;

import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Autowired
	private EventDAO dao;
	
	@RequestMapping(value = "/event.do", method = RequestMethod.GET)
	public ModelAndView event() {
		ModelAndView mav = new ModelAndView();
		//List<EventDTO> nowlist = dao.dbNowevent();
		//List<EventDTO> nextlist = dao.dbEndevent();
		//mav.addObject("eventpage", "nowevent");
		//mav.addObject("nowevent", nowlist);
		//mav.addObject("nextevent", nextlist);
		mav.addObject("page", "event");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	
	
	
}
