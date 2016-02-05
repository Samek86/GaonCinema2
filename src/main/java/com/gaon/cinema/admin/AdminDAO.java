package com.gaon.cinema.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gaon.cinema.member.MemberDTO;
import com.gaon.cinema.theater.TheaterDTO;

@Repository
public class AdminDAO {
	
	@Autowired
	private SqlSessionTemplate temp;
	
	/* 영화관리 */
	public List<TheaterDTO> dbSelectTheaterAll() {
		List<TheaterDTO> list = temp.selectList("admin.selectTheaterAll");
		return list;
	}
	
	/* 예약관리 */
	
	/* 회원관리 */
	public List<MemberDTO> dbSelectMemberAll() {
		List<MemberDTO> list = temp.selectList("");
		return list;
	}
	
}
