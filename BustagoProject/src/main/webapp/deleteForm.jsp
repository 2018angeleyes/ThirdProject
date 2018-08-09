<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<script type="text/javascript">
	alert("회원 탈퇴 정말로 하시겠습니까?");
</script>
</head>
<body>
	<form action="delete.do" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="userId" placeholder="아이디"
					maxlength="20"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="password" name="userPw" placeholder="비밀번호"
					maxlength="20"></td>
				<td colspan="2" id="msg">
					<%
						// 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
						String loginMsg = (String) request.getParameter("fail");
						if (loginMsg != null && loginMsg.equals("0")) {
							out.println("<br>");
							out.println("<font color='red'>비밀번호를 확인해 주세요.</font>");
						} else if (loginMsg != null && loginMsg.equals("-1")) {
							out.println("<br>");
							out.println("<font color='red'>아이디를 확인해 주세요.</font>");
						}
					%>
				</td>
			</tr>
		</table>
			<input type="submit" value="회원탈퇴">
	</form>
</body>
</html>