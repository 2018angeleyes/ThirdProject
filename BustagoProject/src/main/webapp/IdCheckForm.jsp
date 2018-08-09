<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 체크</title>
<style type="text/css">
</style>
</head>
<script type="text/javascript">
	function retype() {
		opener.document.userInfo.userId.value = "";
		self.close();
	}
	function idok(){
		opener.document.userInfo.idDuplication.value ="idCheck";
		self.close();
	}
</script>
<body>
	<%
		String url = "jdbc:mysql://localhost:3306/bus";
		String user = "root";
		String password = "1234";
	%>
	<%
		String userId = request.getParameter("userId");
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			out.println(e.getMessage());
		}
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where userId=?";
		String db_id = null;
		try {
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
	%>
	<script>
		alert("<%=userId%>는 사용할 수 없는 아이디 입니다.");
		</script>
	<%
		} else {
	%>
	<script>
		alert("<%=userId%>는 사용할 수 있는 아이디 입니다.");
		history.back();
	</script>
	<%
		}
		} catch (Exception e) {
			out.println(e.getMessage());
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
	%>

</body>
</html>