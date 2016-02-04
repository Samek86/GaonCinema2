package com.gaon.cinema.join;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDAO {
	@Autowired
	private SqlSessionTemplate temp;
	private static Logger logger = LoggerFactory.getLogger(JoinDAO.class);
	
	public void dbjoin(){
		JoinDTO dto = new JoinDTO();
		logger.info("회원가입 in");
		temp.insert("add",dto);
		logger.info("회원가입 out");
	}
}
