package com.gaon.cinema.store;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	private static final Logger logger = LoggerFactory.getLogger(StoreController.class);
	@Autowired
	private StoreDAO dao;
	
	@RequestMapping(value = "/store.do", method = RequestMethod.GET)
	public ModelAndView store() {
		ModelAndView mav = new ModelAndView();
		
		List<StoreDTO> list = dao.dbStoreSelectAll();
		mav.addObject("StoreList",list);
		mav.addObject("page", "store");
		mav.setViewName("mainLayout");
		return mav;
	}

	@RequestMapping(value = "/StoreDetail.do", method = RequestMethod.GET)
	public void StoreDetail(HttpServletResponse response,HttpServletRequest request) {
		int storeId=Integer.parseInt(request.getParameter("store_id"));
		try {
		PrintWriter out = response.getWriter();
		StoreDTO dto = dao.dbStoreDetail(storeId);
		StringBuilder sb = new StringBuilder();
		sb.append("{");
		sb.append("\"type\": \""+ URLEncoder.encode(dto.getType() , "UTF-8") + "\", ");
		sb.append("\"title\": \""+ URLEncoder.encode(dto.getTitle() , "UTF-8") + "\", "); 
		sb.append("\"subtitle\": \""+ URLEncoder.encode(dto.getSubtitle() , "UTF-8") + "\", "); 
		sb.append("\"content\": \""+ URLEncoder.encode(dto.getContent() , "UTF-8") + "\", ");		 
		sb.append("\"imgfile\": \""+ URLEncoder.encode(dto.getImg_file() , "UTF-8") + "\", ");
		sb.append("\"price\": \""+ dto.getPrice() + "\" ");
		sb.append("}");
		out.print(sb.toString());
		} catch (Exception e) {e.printStackTrace();} 
	}
}
