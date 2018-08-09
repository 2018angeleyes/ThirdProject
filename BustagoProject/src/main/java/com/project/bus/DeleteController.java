package com.project.bus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeleteController {

	@Autowired
	MemberDAO memberDAO;

	@RequestMapping("delete.do")
	public String delete(HttpServletRequest request, HttpSession session,MemberDTO memberDTO) {
		System.out.println("회원탈퇴중...");

		String userId = request.getParameter("userId");
		System.out.println(userId);
		memberDAO.delete(userId);
		System.out.println("회원탈퇴 되었습니다.");
		return "deleteResult";
	}
}
