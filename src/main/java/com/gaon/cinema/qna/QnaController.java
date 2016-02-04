package com.gaon.cinema.qna;

import java.io.File;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javafx.scene.media.Media;
import com.gaon.cinema.qna.QnaDTO;
import com.gaon.cinema.qna.QnaDTO;

@Controller
public class QnaController {
	
	@Autowired
	private QnaDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	//리스트
	@RequestMapping(value = "/qnaList.do", method = RequestMethod.GET)
	public ModelAndView qnaList() {
		ModelAndView mav = new ModelAndView();
	  	List<QnaDTO> list = dao.dbSelect();
	  	mav.addObject("list", list);
		mav.addObject("page", "qnaList");
		mav.setViewName("mainLayout");
		return mav;
	}//end
	
	//한건상세
	@RequestMapping(value="/qnaDetail.do")
	public ModelAndView qnadetail(@RequestParam int qna_id) {	
		ModelAndView mav = new ModelAndView();
		QnaDTO dto = dao.dbDetail(qna_id);
		mav.addObject("bean", dto);
		mav.addObject("page", "qnaDetail");
		mav.setViewName("mainLayout");
		return mav;
	}//end
	
	//수정(가짜)
	@RequestMapping(value = "/qnaPreEdit.do", method = RequestMethod.GET)
	public ModelAndView qnaPreEdit(@RequestParam int qna_id) {
		ModelAndView mav = new ModelAndView();
		QnaDTO dto = dao.dbDetail(qna_id);
		mav.addObject("bean", dto);
		mav.addObject("page", "qnaEdit");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	//수정(진짜)
	@RequestMapping(value = "/qnaEdit.do", method = RequestMethod.GET)
	public ModelAndView qnaEdit(QnaDTO dto) {
		ModelAndView mav = new ModelAndView();	
		dao.dbEdit(dto);
		mav.setViewName("redirect:/qnaList.do");
		return mav;
	}
	
	//삭제
	@RequestMapping(value = "/qnaDelete.do", method = RequestMethod.GET)
	public ModelAndView qnaDelete(QnaDTO dto) {
		ModelAndView mav = new ModelAndView();	
		dao.dbDelete(dto);
		mav.setViewName("redirect:/qnaList.do");
		return mav;
	}
	
	/*@RequestMapping("/edit.do")
	public ModelAndView board_edit(QnaDTO dto){
	  ModelAndView mav = new ModelAndView( );	
	  
	  dao.dbEdit(dto); //DAO단으로 이동
	  mav.setViewName("redirect:/list.do");
	  return mav;
	}
*/
}//QnaController class END
