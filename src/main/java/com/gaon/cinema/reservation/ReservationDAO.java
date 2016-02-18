package com.gaon.cinema.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate temp;
	
	/* 영화 이름, 관람가 가져오기 */
	public List<ReservationShowDTO> dbSelectMovieNameAge() {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectMovieNameAge");
		return list;
	}
	
	/* 영화 이름, 관람가 가져오기(도시로) */
	public List<ReservationShowDTO> dbSelectMovieNameAgeByTheaterCname(String cname) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectMovieNameAgeByTheaterCname", cname);
		return list;
	}
	
	/* 영화 이름, 관람가 가져오기(지역으로) */
	public List<ReservationShowDTO> dbSelectMovieNameAgeByTheaterLname(String lname) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectMovieNameAgeByTheaterCname", lname);
		return list;
	}
	
	/* 영화관 도시 가져오기 */
	public List<ReservationShowDTO> dbSelectTheaterCname() {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectTheaterCname");
		return list;
	}
	
	/* 영화관 지역 가져오기 */
	public List<ReservationShowDTO> dbSelectTheaterLname(String cname) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectTheaterLname", cname);
		return list;
	}
}
