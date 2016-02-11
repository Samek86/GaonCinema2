package com.gaon.cinema.qnaReply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaReplyDAO {
	
	@Autowired
	SqlSessionTemplate temp;
	
	/* 댓글 목록 가져오기 */
	public List<QnaReplyDTO> dbSelectQnaReply(int qna_id) {
		List<QnaReplyDTO> list = temp.selectList("qnaReply.selectQnaReply", qna_id);
		return list;
	}
	
	/* 댓글 등록 */
	public void dbAddQnaReply(QnaReplyDTO dto) {
		temp.insert("qnaReply.addQnaReply", dto);
	}//dbAddQnaReply end
	
	/* 댓글 수정*/
	public void dbReplyEdit(QnaReplyDTO dto){
		temp.update("qnaReply.ReplyEdit", dto);
	}//dbreplyedit end
	
	/* 댓글 삭제*/
	public void dbReplyDelete(QnaReplyDTO dto) {
		temp.delete("qnaReply.ReplyDelete", dto);
	}//dbreplydelete end
	
}//class QnaReplyDAO end
