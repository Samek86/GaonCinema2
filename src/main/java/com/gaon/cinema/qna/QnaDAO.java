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
	
	/*public QnaDTO dbDetail(int data ){
		QnaDTO dto=temp.selectOne("detail", data);
		return dto;
		}//end 수정하기 전에 잘못된파일
*/	
	public QnaDTO dbDetail(int qna_id) {
		QnaDTO detail = temp.selectOne("qna.detail", qna_id);
		return detail;
	}//end
	
	
	public void dbDelete(QnaDTO dto){
	  temp.delete("qna.delete", dto);
	}//end
	
	public void  dbEdit(QnaDTO dto){
		temp.update("qna.edit", dto);
	}//end
	
	/*public int dbCount( ){
	  int total=316;
	  return total;
	}//end
	*/


	
	
	
	
	
}//QnaDAO class END
	



