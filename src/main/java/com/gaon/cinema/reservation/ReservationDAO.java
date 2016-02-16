package com.gaon.cinema.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate temp;
	
	public List<ReservationShowDTO> dbSelectMovieNameAge() {
		List<ReservationShowDTO> list = temp.selectList("reservation.selectMovieNameAge");
		return list;
	}//dbSelectMovieNameAge
	
} //ReservationDAO class END
