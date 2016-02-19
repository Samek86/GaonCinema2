package com.gaon.cinema.reservation;

public class ReservationDTO {
	private int reservation_id;
	private int theater_schedule_id;
	private String cname;
	private String lname;
	private String tname;
	private String ttype;
	private String mstarthour;
	private String mendhour;
	private String name_k;
	private String name_e;
	private String age;
	private String poster;
	private int r_time;
	private String userid;
	private String seat;
	private int children;
	private int adult;
	private int price;
	
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public int getTheater_schedule_id() {
		return theater_schedule_id;
	}
	public void setTheater_schedule_id(int theater_schedule_id) {
		this.theater_schedule_id = theater_schedule_id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTtype() {
		return ttype;
	}
	public void setTtype(String ttype) {
		this.ttype = ttype;
	}
	public String getMstarthour() {
		return mstarthour;
	}
	public void setMstarthour(String mstarthour) {
		this.mstarthour = mstarthour;
	}
	public String getMendhour() {
		return mendhour;
	}
	public void setMendhour(String mendhour) {
		this.mendhour = mendhour;
	}
	public String getName_k() {
		return name_k;
	}
	public void setName_k(String name_k) {
		this.name_k = name_k;
	}
	public String getName_e() {
		return name_e;
	}
	public void setName_e(String name_e) {
		this.name_e = name_e;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public int getR_time() {
		return r_time;
	}
	public void setR_time(int r_time) {
		this.r_time = r_time;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}