package com.gaon.cinema.movie;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gaon.cinema.movie.MovieDAO;

@Repository
public class MovieDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	private static Logger logger = LoggerFactory.getLogger(MovieDAO.class);

	java.util.Date javatoday = new java.util.Date();     //오늘 날짜 
	SimpleDateFormat trans = new SimpleDateFormat("yyyyMMdd");
	String today = trans.format(javatoday); //오늘 날짜를 스트링으로 변환 
	
	/*String bgn = '20150907';
	Date bgnday = trans.parse(bgn);*/
	
	public List<MovieDTO> dbNowMovie(){
		System.out.println("오늘날짜 : "+today);
		List<MovieDTO> list = sql.selectList("movie.nowmovie", today);
		System.out.println("DBOK");
		return list;
	}
	
	public List<MovieDTO> dbNextMovie(){
		System.out.println("오늘날짜 : "+today);
		List<MovieDTO> list = sql.selectList("movie.nextmovie", today);
		return list;
	}
	
/*	public void dbEdit(MovieDTO dto){
		temp.update("member.edit",dto);
	};

	public int dbDelete(MovieDTO dto) {
		int ok = temp.delete("member.delete", dto);
		logger.info("ok="+ok);
		return ok;
	}*/
}
