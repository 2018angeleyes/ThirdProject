<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<title>정보 수정 화면</title>
<script type="text/javascript">

function checkValue()
{
    var form = document.userInfo;
    var regExp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;


    if(!form.userPw.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }
    
    // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    if(form.userPw.value != form.userPw_confirm.value ){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
    }    
    
    if(!form.userName.value){
        alert("이름을 입력하세요.");
        return false;
    }
   
    if(!form.userBirth.value){
    	alert("출생년도를 입력하세요.");
    	return false;
    }
    if(!form.userEmail.value){
        alert("메일 주소를 입력하세요.");
        return false;
    }
    if(!form.userPhone.value){
        alert("전화번호를 입력하세요.");
        return false;
    }

}
        function openIdChk(){
        	url = "member_View/IdCheckForm.jsp?id=" + document.userInfo.userId.value;
            window.name = "parentForm";
            window.open(url,
                    "chkForm", "width=350, height=150, resizable = no, scrollbars = no");    
        }

function inputIdChk(){
    document.userInfo.idDuplication.value ="idUncheck";
}

</script>
</head>
<body>
	<h1>회원정보를 입력해주세요.</h1>
	<hr color="gray">
	<form action="update.do" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" value="<%=session.getAttribute("userId") %>" name="userId" maxlength="20"
					placeholder="아이디" readonly="readonly"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="userPw" maxlength="20"
					placeholder="비밀번호"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="userPw_confirm" maxlength="20"
					placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="userName" maxlength="20"
					placeholder="이름"></td>
			</tr>
			<tr>
				<td>출생년도</td>
				<td><input type="text" name="userBirth" maxlength="20"
					placeholder="출생년도"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="userEmail" maxlength="20"
					placeholder="이메일"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="userPhone" maxlength="20"
					placeholder="전화번호"></td>
			</tr>
		</table>
		<input type="submit" value="정보 수정">
		<button type="button" onclick="location.href='deleteForm.jsp'">회원 탈퇴</button>
	</form>
</body>
</html>