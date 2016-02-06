package com.gaon.mail;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gaon.cinema.member.MemberDAO;
import com.gaon.cinema.member.MemberDTO;
import com.sun.media.jfxmedia.logging.Logger;

@Controller
public class EmailController {
    @Autowired
    private EmailSender emailSender;
    
    @Autowired
    private MemberDAO dao;
    
    @RequestMapping("/memberpwSerch.do")
    public void sendEmailAction (HttpServletRequest request, HttpServletResponse response) throws Exception {
    		ModelAndView mav = new ModelAndView();
    		response.setCharacterEncoding("UTF-8");
  			response.setContentType("text/html;charset=UTF-8");
    		PrintWriter out = response.getWriter();
        Email email = new Email();
        MemberDTO dto = new MemberDTO();
        String id = request.getParameter("searchId");
        String name = request.getParameter("searchName");
        String reciver = request.getParameter("searchEmail"); //받을사람의 이메일입니다.
        dto.setUserid(id);
        dto.setName(name);
        dto.setEmail(reciver);
        int count = dao.pwSerch(id,name,reciver);
        if (count ==3){
        dto=dao.pwSelect(dto);
        String subject = "비밀번호 찾기 답변입니다.";
        String content = "이메일 내용입니다.\n";
        content += name+"님 패스워드 :" +dto.getUserpw()+"입니다.";
        email.setReciver(reciver);
        email.setSubject(subject);
        email.setContent(content);
        emailSender.SendEmail(email);
        out.print("{\"check\":\"" + count + "\",\"ok\": \"패스워드가 고객님의 메일로 발송되었습니다.\"}");
        }
        else {
        	out.print("{\"check\": \""+ count + "\"}");
        }
    }
}