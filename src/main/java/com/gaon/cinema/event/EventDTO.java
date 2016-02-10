package com.gaon.cinema.event;

import java.util.Date;

public class EventDTO {
	private int event_id;
	private String title;
	private String contents;
	private String poster;
	private String img;
	private Date wdate;
	private Date start;
	private Date end;
	private String today;
	
	
	public int getEvent_id() {		return event_id;	}
	public void setEvent_id(int event_id) {		this.event_id = event_id;	}
	public String getTitle() {		return title;	}
	public void setTitle(String title) {		this.title = title;	}
	public String getContents() {		return contents;	}
	public void setContents(String contents) {		this.contents = contents;	}
	public String getPoster() {		return poster;	}
	public void setPoster(String poster) {		this.poster = poster;	}
	public String getImg() {		return img;	}
	public void setImg(String img) {		this.img = img;	}
	public Date getWdate() {		return wdate;	}
	public void setWdate(Date wdate) {		this.wdate = wdate;	}
	public Date getStart() {		return start;	}
	public void setStart(Date start) {		this.start = start;	}
	public Date getEnd() {		return end;	}
	public void setEnd(Date end) {		this.end = end;	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	

	
}
