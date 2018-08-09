<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원가입 완료!
<%
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");
session.setAttribute("userId", userId);
session.setAttribute("userPw", userPw);
%>
</body>
</html>