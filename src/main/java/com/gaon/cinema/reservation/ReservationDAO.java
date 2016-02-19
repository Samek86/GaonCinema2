package com.gaon.cinema.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate temp;
	
	/* 영화 이름, 관람가 가져오기(도시 OR 지역 OR 날짜) */
	public List<ReservationShowDTO> dbSelectMovieNameAge(ReservationShowDTO dto) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectMovieNameAge", dto);
		return list;
	}
	
	/* 영화관 도시 가져오기 */
	public List<ReservationShowDTO> dbSelectTheaterCname(ReservationShowDTO dto) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectTheaterCname", dto);
		return list;
	}
	
	/* 영화관 지역 가져오기 */
	public List<ReservationShowDTO> dbSelectTheaterLname(String cname) {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectTheaterLname", cname);
		return list;
	}
}
