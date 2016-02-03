package com.gaon.cinema.qna;

import com.gaon.cinema.qna.QnaDTO;
import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSessionTemplate temp;

	public List<QnaDTO> dbSelect( ){
	  List<QnaDTO> list=temp.selectList("qna.selectAll");
	  return list;
	}//end
	
	
}//BoardDAO class END
	



