package com.gaon.cinema.reservation;

public class ReservationShowDTO {
	private int movie_id;
	private String name_k;
	private String age;
	private String cname;
	private int corder;
	private String lname;
	private String date;
	
	public int getMovie_id() { return movie_id; }
	public void setMovie_id(int movie_id) { this.movie_id = movie_id; }
	public String getName_k() { return name_k; }
	public void setName_k(String name_k) { this.name_k = name_k; }
	public String getAge() { return age; }
	public void setAge(String age) { this.age = age; }
	public String getCname() { return cname; }
	public void setCname(String cname) { this.cname = cname; }
	public int getCorder() { return corder; }
	public void setCorder(int corder) { this.corder = corder; }
	public String getLname() { return lname; }
	public void setLname(String lname) { this.lname = lname; }
	public String getDate() { return date; }
	public void setDate(String date) { this.date = date; }
}

