package com.project.bus;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	@Autowired
	MemberDAO memberDAO;
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
//		String id = request.getParameter("id");
//		String pw = request.getParameter("pw");
		
		session.removeAttribute("userId");
		session.removeAttribute("userPw");
		System.out.println("로그아웃");
		return "logoutResult";
	}
}
