package com.gaon.cinema.event;

import java.util.Date;

public class EventDTO {
	private int event_id;
	private String title;
	private String content;
	private String poster;
	private Date start;
	private Date end;
	
	
	public int getEvent_id() {		return event_id;	}
	public void setEvent_id(int event_id) {		this.event_id = event_id;	}
	public String getTitle() {		return title;	}
	public void setTitle(String title) {		this.title = title;	}
	public String getContent() {		return content;	}
	public void setContent(String content) {		this.content = content;	}
	public String getPoster() {		return poster;	}
	public void setPoster(String poster) {		this.poster = poster;	}
	public Date getStart() {		return start;	}
	public void setStart(Date start) {		this.start = start;	}
	public Date getEnd() {		return end;	}	
	public void setEnd(Date end) {		this.end = end;	}
	
	
}
