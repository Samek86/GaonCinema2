package com.gaon.cinema.theater;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TheaterDAO {
	
	@Autowired
	private SqlSessionTemplate temp;
	
	public List<String> dbSelectCname() {
		List<String> list = temp.selectList("theater.selectCname");
		return list;
	}
	
	public List<String> dbSelectLname(String cname) {
		List<String> list = temp.selectList("theater.selectLname", cname);
		return list;
	}
}
