package com.gaon.cinema.theater;

public class TheaterDTO {
	/* GC_THEATER */
	private int theater_id;
	private String cname;
	private String lname;
	private String tname;
	private String ttype;
	private int seatcount;
	private String mname;
	private java.sql.Date mstarthour;
	private java.sql.Date mendhour;
	private int price;
	
	private int start;
	private int end;
	private int pagenum;
	
	public int getTheater_id() { return theater_id; }
	public void setTheater_id(int theater_id) { this.theater_id = theater_id; }
	public String getCname() { return cname; }
	public void setCname(String cname) { this.cname = cname; }
	public String getLname() { return lname; }
	public void setLname(String lname) { this.lname = lname; }
	public String getTname() { return tname; }
	public void setTname(String tname) { this.tname = tname; }
	public String getTtype() { return ttype; }
	public void setTtype(String ttype) { this.ttype = ttype; }
	public int getSeatcount() { return seatcount; }
	public void setSeatcount(int seatcount) { this.seatcount = seatcount; }
	public String getMname() { return mname; }
	public void setMname(String mname) { this.mname = mname; }
	public java.sql.Date getMstarthour() { return mstarthour; }
	public void setMstarthour(java.sql.Date mstarthour) { this.mstarthour = mstarthour; }
	public java.sql.Date getMendhour() { return mendhour; }
	public void setMendhour(java.sql.Date mendhour) { this.mendhour = mendhour; }
	public int getPrice() { return price; }
	public void setPrice(int price) { this.price = price; }
	
	public int getStart() { return start; }
	public void setStart(int start) { this.start = start; }
	public int getEnd() { return end; }
	public void setEnd(int end) { this.end = end; }
	public int getPagenum() { return pagenum; }
	public void setPagenum(int pagenum) { this.pagenum = pagenum; }
}
