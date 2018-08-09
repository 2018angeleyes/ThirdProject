package com.project.bus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertController {

	@Autowired
	MemberDAO memberDAO;
	
	@RequestMapping("insert")
	public String insert(MemberDTO memberDTO){
		memberDTO.getUserId();
		memberDTO.getUserPw();
		memberDTO.getUserName();
		memberDTO.getUserBirth();
		memberDTO.getUserEmail();
		memberDTO.getUserPhone();
		memberDAO.insert(memberDTO);
		return "insertOk";
	}
}
