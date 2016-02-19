package com.gaon.cinema.reservation;

public class ReservationDTO {
	private int reservation_id;
	private int movie_id;
	private int theater_id;
	private int theater_schedule_id;
	private String userid;
	private String seat;
	private int children;
	private int adult;
	private int price;
	
	public int getReservation_id() { return reservation_id; }
	public void setReservation_id(int reservation_id) { this.reservation_id = reservation_id; }
	public int getMovie_id() { return movie_id; }
	public void setMovie_id(int movie_id) { this.movie_id = movie_id; }
	public int getTheater_id() { return theater_id; }
	public void setTheater_id(int theater_id) { this.theater_id = theater_id; }
	public int getTheater_schedule_id() { return theater_schedule_id; }
	public void setTheater_schedule_id(int theater_schedule_id) { this.theater_schedule_id = theater_schedule_id; }
	public String getUserid() { return userid; }
	public void setUserid(String userid) { this.userid = userid; }
	public String getSeat() { return seat; }
	public void setSeat(String seat) { this.seat = seat; }
	public int getChildren() { return children; }
	public void setChildren(int children) { this.children = children; }
	public int getAdult() { return adult; }
	public void setAdult(int adult) { this.adult = adult; }
	public int getPrice() { return price; }
	public void setPrice(int price) { this.price = price; }
}