package com.gaon.cinema.login;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	private LoginDAO dao;
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("/login.do")
	public ModelAndView login(HttpServletResponse response,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		logger.info("login.do Start");
		/////////////////
		try {
			StringBuilder sb = new StringBuilder(); 
			response.setCharacterEncoding("EUC-KR");
			response.setContentType("text/xml;charset=EUC-KR");
			PrintWriter out = response.getWriter();
			String id = request.getParameter("loginID");
			String pw = request.getParameter("loginPW");
			System.out.println(id+ " " + pw);
			int count = dao.loginSerch(id, pw);
			System.out.println("LoginController count : " + count);
			if(count == 1){
				HttpSession session = request.getSession();
				session.setAttribute("NowUser", id); 
				System.out.println(session.getAttribute("NowUser"));
			}else {
				out.print("<script>");
				out.print("alert('아이디와 비밀번호를 확인해주세요')");
				out.print("</script>");
			}//else end
			out.print(sb.toString());
			System.out.println(sb);
			}catch(Exception ex){	ex.printStackTrace();	}
			/////////////////
			return mav;
	}
	
}
