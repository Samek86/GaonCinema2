package com.gaon.cinema.board;

import java.sql.Date;

public class BoardDTO {//필드이름
	
	private int board_id;
	private String userid;
	private String title;
	private String contents;
	private Date wdate;
	private int count;
	
	public int board_id() {	return board_id;}
	public void setboard_id(int board_id) {this.board_id = board_id;}
	
	public String userid() {return userid;}
	public void setuserid(String userid){this.userid = userid;}
	
	public String title() {return title;}
	public void settitle(String title){this.title = title;}
	
	public String contents() {return contents;}
	public void setcontents(String contents){this.contents = contents;}
	
	public Date wdate() {return wdate;}
	public void setwdate(Date wdate) {this.wdate = wdate;}
	
	public int count() {return count;}
	public void setcount(int count) {this.count = count;}
	
}
