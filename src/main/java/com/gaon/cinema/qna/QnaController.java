package com.gaon.cinema.qna;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
}//QnaController class END
