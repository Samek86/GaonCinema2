package com.gaon.cinema.login;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {
	@Autowired
	private SqlSessionTemplate sst;
	private static final Logger logger = LoggerFactory.getLogger(LoginDAO.class);
	
	public List<LoginDTO> dbSelect(String id, String pw){
		LoginDTO dto = new LoginDTO();
		List<LoginDTO> list= sst.selectList("selectAll",dto);
		return list;
	}//end


	public int loginSerch(String id, String pw) {
		LoginDTO dto = new LoginDTO();
		dto.setId(id);
		dto.setPw(pw);
		int count = sst.selectOne("count", dto);
		return count;
	}
	
}//BoardDAO class END




