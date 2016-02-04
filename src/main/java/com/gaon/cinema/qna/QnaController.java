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
	
	@RequestMapping(value = "/qna.do", method = RequestMethod.GET)
	public ModelAndView qnaList() {
		ModelAndView mav = new ModelAndView();
	  	List<QnaDTO> list = dao.dbSelect();
	  	mav.addObject("list", list);
		mav.addObject("page", "qnaList");
		mav.setViewName("mainLayout");
		return mav;
	}//end
	
	@RequestMapping(value="/qnaDetail.do")
	public ModelAndView qnadetail(@RequestParam int qna_id) {	
		ModelAndView mav = new ModelAndView();
		QnaDTO dto = dao.dbDetail(qna_id);
		mav.addObject("bean", dto);
		mav.addObject("page", "qnaDetail");
		mav.setViewName("mainLayout");
		return mav;
	}//end
	
	@RequestMapping(value = "/qnaPreEdit.do", method = RequestMethod.GET)
	public ModelAndView qnaPreEdit(@RequestParam int qna_id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "qnaEdit");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	@RequestMapping(value = "/qnaEdit.do", method = RequestMethod.POST)
	public ModelAndView qnaEdit() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "qnaList");
		mav.setViewName("mainLayout");
		return mav;
	}
	
	@RequestMapping(value = "/qnaDelete.do", method = RequestMethod.GET)
	public ModelAndView qnaDelete() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("page", "qnaList");
		mav.setViewName("mainLayout");
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
