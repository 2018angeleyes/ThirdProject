package com.project.bus;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@Autowired
	MemberDAO memberDAO;

	@RequestMapping("login.do")
	public String login(HttpServletRequest request, HttpSession session, Model model) {
		System.out.println("로그인중..");

		String gId = request.getParameter("userId");
		String gPw = request.getParameter("userPw");
		List<MemberDTO> list = memberDAO.selectAll();
		for(int i=0;i<list.size();i++) {
			if(gId.equals(list.get(i).getUserId()) && gPw.equals(list.get(i).getUserPw())) {
				return "loginOk";
			}else {
				return "loginNot";
			}
		}
		return "loginNot";
	}
}
