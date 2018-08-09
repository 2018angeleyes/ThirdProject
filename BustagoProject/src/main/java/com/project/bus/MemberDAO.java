package com.project.bus;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
String sql;
	
	@Autowired
	JdbcTemplate jdbc;
	
	
	public void insert(MemberDTO dto) {
		sql = "insert into member values (?,?,?,?,?,?)";
		jdbc.update(sql, dto.getUserId(),dto.getUserPw(),dto.getUserName(),dto.getUserBirth(),dto.getUserEmail(),dto.getUserPhone());
	}
	
	public void delete(String gId) {
		sql = "delete from member where userId=?";
		jdbc.update(sql,gId);
	}
	public void update(MemberDTO memberDTO) {
		sql = "update member set userPw=?,userName=?,userBirth=?, userEmail=?, userPhone=? where userId=?";
		jdbc.update(sql,memberDTO.getUserPw(),memberDTO.getUserName(),memberDTO.getUserBirth(),memberDTO.getUserEmail(),memberDTO.getUserPhone(),memberDTO.getUserId());
	}
	public MemberDTO select(String sId) {
		sql = "select * from member where userId=?";
		Object[] arg = {sId};
		return jdbc.queryForObject(sql, arg, new MemberMapper());
	}
	public MemberDTO select2(MemberDTO dto) {
		sql = "select * from member where userId=?";
		Object[] l = {dto.getUserId()};
		return jdbc.queryForObject(sql, l,new MemberMapper());
	}

	public List<MemberDTO> selectAll(){
		sql = "select * from member";
		return jdbc.query(sql, new MemberMapper());
	}
//	public String loginCheck(MemberDTO dto) {
//		sql = "select userPw from member where userId=?";
//		String userId = dto.getUserId();
//		return ;
//	}
//	public boolean loginCheck(String userId,String userPw) {
//		sql = "selct * from member where userId='" + userId + "'and userPw='" + userPw + "'";
//		return true;
//		
//	}

}
