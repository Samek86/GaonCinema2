package com.gaon.cinema.board;

import java.util.List;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BoardController {
	
	private BoardDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/boardList.do", method = RequestMethod.GET)
	public ModelAndView boardList() {
			ModelAndView mav = new ModelAndView();
//		  	List<BoardDTO> list = dao.dbSelect();
//		  	mav.addObject("list", list);
			mav.addObject("page", "boardList");
			mav.setViewName("mainLayout");
			return mav;
	}//end
	
	@RequestMapping("/insert.do")
	public ModelAndView board_insert(BoardDTO dto){
		ModelAndView mav = new ModelAndView( );
			dao.dbInsert(dto); //DAO단으로 이동
			mav.setViewName("redirect:/list.do");
			return mav;
	}//end

}//BoardController class END



