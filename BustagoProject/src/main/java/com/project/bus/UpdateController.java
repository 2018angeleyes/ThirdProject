package com.project.bus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UpdateController {
	@Autowired
	MemberDAO memberDAO;
	@RequestMapping("update.do")
	public String update(Model model,MemberDTO memberDTO) {
		System.out.println("회원정보 수정..");
		memberDAO.update(memberDTO);
		MemberDTO memberDTO2 = memberDAO.select2(memberDTO);
		System.out.println(memberDTO2.getUserId());
		System.out.println(memberDTO2.getUserPw());
		model.addAttribute("memberDTO2",memberDTO2);	
		return "updateResult";
	}
}
