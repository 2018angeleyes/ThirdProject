<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	alert("�α��� �Ϸ�Ǿ����ϴ�.");
</script>
</head>
<body>

�α��� ����!

<%
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");
session.setAttribute("userId", userId);
session.setAttribute("userPw", userPw);
%>
<a href="select.jsp">���� ����</a>
</body>
</html>