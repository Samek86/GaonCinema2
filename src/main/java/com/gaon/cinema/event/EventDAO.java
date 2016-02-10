package com.gaon.cinema.event;

import java.text.SimpleDateFormat;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gaon.cinema.event.EventDAO;
import com.gaon.cinema.event.EventDTO;
import com.gaon.cinema.event.EventDTO;

@Repository
public class EventDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	private static Logger logger = LoggerFactory.getLogger(EventDAO.class);
	
	SimpleDateFormat trans = new SimpleDateFormat("yyyyMMdd");
	java.util.Date javatoday = new java.util.Date();     //오늘 날짜 
	String today = trans.format(javatoday); //오늘 날짜를 스트링으로 변환 
	
	public List<EventDTO> dbNowEvent(){
		List<EventDTO> list = sql.selectList("event.nowevent", today);
		
		EventDTO dto = new EventDTO();
		dto.setToday(today);
		
		return list;
		
	}

	public List<EventDTO> dbEndEvent(){
		List<EventDTO> list = sql.selectList("event.endevent", today);
		
		EventDTO dto = new EventDTO();
		dto.setToday(today);
		
		return list;
	}
	
	
}
