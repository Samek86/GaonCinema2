package com.gaon.mail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gaon.cinema.member.MemberDAO;
import com.gaon.cinema.member.MemberDTO;

@Controller
public class EmailController {
    @Autowired
    private EmailSender emailSender;
    
    @Autowired
    private MemberDAO dao;
    
    @RequestMapping("/memberpwSerch.do")
    public ModelAndView sendEmailAction (HttpServletRequest request, HttpServletResponse response) throws Exception {
    		ModelAndView mav = new ModelAndView();
    		HttpSession session = request.getSession();
        Email email = new Email();
        MemberDTO dto = new MemberDTO();
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String reciver = request.getParameter("email"); //받을사람의 이메일입니다.
        dto.setUserid(id);
        dto.setName(name);
        dto.setEmail(reciver);
        int count = dao.pwSerch(dto);
        if (count ==1){
        dto=dao.pwSelect(dto);
        String subject = "비밀번호 찾기 답변입니다.";
        String content = "이메일 내용입니다.\n";
        content += name+"님 패스워드 :" +dto.getUserpw()+"입니다.";
        System.out.println(reciver);
        email.setReciver(reciver);
        email.setSubject(subject);
        email.setContent(content);
        emailSender.SendEmail(email);
        session.setAttribute("ok","패스워드가 고객님의 메일로 발송되었습니다.");
        }else{
        	session.setAttribute("ok","아이디와 패스워드를 다시 확인해 주세요.");
        }
        mav.setViewName("redirect:/main.do");
        return mav;
    }
}