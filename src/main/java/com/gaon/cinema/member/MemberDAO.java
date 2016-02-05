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
	private static Logger logger = LoggerFactory.getLogger(MemberDAO.class);
	
	public MemberDTO dbmember(MemberDTO dto){
		dto = temp.selectOne("member.member",dto);
		return dto;
	}
	
	public void dbEdit(MemberDTO dto){
		temp.update("member.edit",dto);
	};

	public int dbDelete(MemberDTO dto) {
		int ok = temp.delete("member.delete", dto);
		logger.info("ok="+ok);
		return ok;
	}

	public int idSerch(MemberDTO dto) {
		// TODO Auto-generated method stub
		int count = temp.selectOne("member.searchidCount", dto);
		logger.info("ok = " + count);
		return count;
	}

	public int pwSerch(MemberDTO dto) {
		// TODO Auto-generated method stub
		int count = temp.selectOne("member.searchpwCount", dto);
		logger.info("ok = " + count);
		return count;
	}

	public MemberDTO idSelect(MemberDTO dto) {
		dto = temp.selectOne("member.idSelect", dto);
		// TODO Auto-generated method stub
		return dto;
	}
	public MemberDTO pwSelect(MemberDTO dto) {
		dto = temp.selectOne("member.pwSelect", dto);
		// TODO Auto-generated method stub
		return dto;
	}
}
