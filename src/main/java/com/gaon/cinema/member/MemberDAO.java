package com.gaon.cinema.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gaon.cinema.join.JoinDAO;
import com.gaon.cinema.join.JoinDTO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate temp;
	private static Logger logger = LoggerFactory.getLogger(JoinDAO.class);
	
	public MemberDTO dbmember(String id){
		MemberDTO dto = temp.selectOne("member.member",id);
		return dto;
	}
}
