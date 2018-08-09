package com.project.bus;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MemberMapper implements RowMapper<MemberDTO> {

	@Override
	public MemberDTO mapRow(ResultSet rs, int arg1) throws SQLException {
		MemberDTO dto = new MemberDTO();
		dto.setUserId(rs.getString(1));
		dto.setUserPw(rs.getString(2));
		dto.setUserName(rs.getString(3));
		dto.setUserBirth(rs.getString(4));
		dto.setUserEmail(rs.getString(5));	
		dto.setUserPhone(rs.getString(6));
		return dto;
	}

}