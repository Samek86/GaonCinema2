package com.gaon.cinema.qnaReply;

import java.sql.Date;

public class QnaReplyDTO {
	private int qna_id;
	private String userid;
	private String contents;
	private Date wdate;
	
	public int getQna_id() { return qna_id; }
	public void setQna_id(int qna_id) { this.qna_id = qna_id; }
	public String getUserid() { return userid; }
	public void setUserid(String userid) { this.userid = userid; }
	public String getContents() { return contents; }
	public void setContents(String contents) { this.contents = contents; }
	public Date getWdate() { return wdate; }
	public void setWdate(Date wdate) { this.wdate = wdate; }
}
