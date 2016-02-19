package com.gaon.cinema.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate temp;
	
	/* 영화 이름, 관람가 가져오기(전체) */
	public List<ReservationShowDTO> dbSelectMovieNameAgeAll() {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectMovieNameAgeAll");
		return list;
	}
	
	/* 영화 이름, 관람가 가져오기(도시 OR 지역 OR 날짜) */
	public List<ReservationShowDTO> dbSelectMovieNameAge(ReservationShowDTO dto) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectMovieNameAge", dto);
		return list;
	}
	
	/* 영화관 도시 가져오기(전체) */
	public List<ReservationShowDTO> dbSelectTheaterCnameAll() {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectTheaterCnameAll");
		return list;
	}
	
	/* 영화관 도시 가져오기(영화 OR 날짜) */
	public List<ReservationShowDTO> dbSelectTheaterCname(ReservationShowDTO dto) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectTheaterCname", dto);
		return list;
	}
	
	/* 영화관 지역 가져오기 */
	public List<ReservationShowDTO> dbSelectTheaterLname(String cname) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectTheaterLname", cname);
		return list;
	}
	
	/* 날짜 가져오기(전체 */
	public List<ReservationShowDTO> dbSelectDateAll() {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectDateAll");
		return list;
	}
	
	/* 날짜 가져오기(영화 OR 도시 OR 지역) */
	public List<ReservationShowDTO> dbSelectDate(ReservationShowDTO dto) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectDate", dto);
		return list;
	}
	
	public void dbInsertrev(ReservationDTO dto){ //예약 삽입
		temp.insert("reservation.insertrev", dto);
	}
	
	public List<ReservationDTO> dbselectrev(String userid) { //예약출력 
		List<ReservationDTO> list = temp.selectList("reservation.selectrev", userid);
		return list;
	}
	
}
