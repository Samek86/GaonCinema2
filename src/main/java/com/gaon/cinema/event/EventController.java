package com.gaon.cinema.event;

import java.io.IOException;

import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gaon.cinema.movie.MovieDTO;

@Controller
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Autowired
	private EventDAO dao;
	
	@RequestMapping(value = "/event.do", method = RequestMethod.GET)
	public ModelAndView event() {
		ModelAndView mav = new ModelAndView();
		
		List<EventDTO> nowevent = dao.dbNowEvent();
		List<EventDTO> endevent = dao.dbEndEvent();
		mav.addObject("nowevent", nowevent);
		mav.addObject("endevent", endevent);
		mav.addObject("page", "event");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	@RequestMapping(value="/eventDetail.do", method=RequestMethod.GET)
	public void eventDetail(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		PrintWriter out = response.getWriter();
		String event_id = request.getParameter("event_id");
		EventDTO dto = dao.dbEventDetail(event_id);
		StringBuilder sb = new StringBuilder();
		sb.append("{");
		sb.append("\"event_id\": \"" + dto.getEvent_id() + "\", " );
		sb.append("\"title\": \""+ dto.getTitle() + "\", ");
		sb.append("\"e_start\": \"" + sdf.format(dto.getE_start()) + "\", ");
		sb.append("\"e_end\": \"" + sdf.format(dto.getE_end()) + "\", ");
		sb.append("\"poster\": \"" + dto.getPoster() + "\", ");
		sb.append("\"img\": \"" + dto.getImg() + "\" ");
		sb.append("}");
		System.out.println(sb);
		out.print(sb.toString());
	}
	
	
	/*	
	@RequestMapping(value = "/movieDetail.do", method = RequestMethod.GET)
	public void movieDetail(HttpServletResponse response,HttpServletRequest request) throws ServletException, IOException{
		SimpleDateFormat trans = new SimpleDateFormat("yyyy.MM.dd");
		PrintWriter out = response.getWriter();
		String Event_id = request.getParameter("MOVIE_ID");
		MovieDTO m_Detail = dao.dbEventDetail(Event_id);
		StringBuilder sb = new StringBuilder();
		sb.append("{");
		sb.append("\"MOVIE_ID\": \""+ m_Detail.getMOVIE_ID() + "\", "); 
		sb.append("\"NAME_K\": \""+ URLEncoder.encode(m_Detail.getNAME_K() , "UTF-8") + "\", "); 
		sb.append("\"NAME_E\": \""+ URLEncoder.encode(m_Detail.getNAME_E() , "UTF-8") + "\", "); 
		sb.append("\"AGE\": \""+ URLEncoder.encode(m_Detail.getAGE() , "UTF-8") + "\", ");		 
		sb.append("\"AGEtext\": \""+ URLEncoder.encode(m_Detail.getAGEtext() , "UTF-8") + "\", ");
		sb.append("\"D_DAY\": \""+ trans.format(m_Detail.getD_DAY()) + "\", ");
		sb.append("\"DIRECTOR\": \""+ URLEncoder.encode(m_Detail.getDIRECTOR() , "UTF-8") + "\", ");
		sb.append("\"ACTOR\": \""+ URLEncoder.encode(m_Detail.getACTOR() , "UTF-8") + "\", ");
		sb.append("\"GENRE\": \""+ URLEncoder.encode(m_Detail.getGENRE() , "UTF-8") + "\", ");
		sb.append("\"PAGE\": \""+ URLEncoder.encode(m_Detail.getPAGE() , "UTF-8") + "\", ");
		sb.append("\"AVG\": \""+ m_Detail.getAVG()+ "\", ");
		sb.append("\"AVG_NUM\": \""+ m_Detail.getAVG_NUM() + "\", ");
		sb.append("\"CONTENT\": \""+ URLEncoder.encode(m_Detail.getCONTENT() , "UTF-8") + "\", ");
		sb.append("\"POSTER\": \""+ URLEncoder.encode(m_Detail.getPOSTER() , "UTF-8") + "\", ");
		sb.append("\"MOVIE\": \""+ URLEncoder.encode(m_Detail.getMOVIE() , "UTF-8") + "\", ");
		sb.append("\"STEEL1\": \""+ URLEncoder.encode(m_Detail.getSTEEL1() , "UTF-8") + "\", ");
		sb.append("\"STEEL2\": \""+ URLEncoder.encode(m_Detail.getSTEEL2() , "UTF-8") + "\", ");
		sb.append("\"STEEL3\": \""+ URLEncoder.encode(m_Detail.getSTEEL3() , "UTF-8") + "\", ");
		sb.append("\"STEEL4\": \""+ URLEncoder.encode(m_Detail.getSTEEL4() , "UTF-8") + "\", ");
		sb.append("\"STEEL5\": \""+ URLEncoder.encode(m_Detail.getSTEEL5() , "UTF-8") + "\", ");
		sb.append("\"STEEL6\": \""+ URLEncoder.encode(m_Detail.getSTEEL6() , "UTF-8") + "\", ");
		sb.append("\"STEEL7\": \""+ URLEncoder.encode(m_Detail.getSTEEL7() , "UTF-8") + "\", ");
		sb.append("\"R_TIME\": \""+ m_Detail.getR_TIME() + "\", ");
		sb.append("\"STARTDATE\": \""+ trans.format(m_Detail.getSTARTDATE()) + "\", ");
		sb.append("\"ENDDATE\": \""+ trans.format(m_Detail.getENDDATE()) + "\", ");
		sb.append("\"dday\": \""+ m_Detail.getDday() + "\" ");
		sb.append("}");
		out.print(sb.toString());
	}
	*/
}
