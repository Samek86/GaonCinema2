package com.gaon.cinema.qna;

import java.sql.Date;

public class QnaDTO {//필드이름
	
	private int qna_id;
	private String userid;
	private String title;
	private String contents;
	private Date wdate;
	private int count;
	
	public int getQna_id() { return qna_id; }
	public void setQna_id(int qna_id) { this.qna_id = qna_id; }
	public String getUserid() { return userid; }
	public void setUserid(String userid) { this.userid = userid; }
	public String getTitle() { return title; }
	public void setTitle(String title) { this.title = title; }
	public String getContents() { return contents; }
	public void setContents(String contents) { this.contents = contents; }
	public Date getWdate() { return wdate; }
	public void setWdate(Date wdate) { this.wdate = wdate; }
	public int getCount() { return count; }
	public void setCount(int count) { this.count = count; }
}
