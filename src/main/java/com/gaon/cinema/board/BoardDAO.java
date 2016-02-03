package com.gaon.cinema.board;

import com.gaon.cinema.board.BoardDTO;
import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	private SqlSessionTemplate temp;

	public void dbInsert(BoardDTO dto){
	 temp.insert("add", dto);
	 System.out.println("dao단에서 저장성공" );
	}//end
	
	public List<BoardDTO> dbSelect( ){
	  List<BoardDTO> list=temp.selectList("selectAll");
	  return list;
	}//end
	
	
}//BoardDAO class END
	



