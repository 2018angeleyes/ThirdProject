<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<title>회원가입 화면</title>
<link type="text/css" rel="stylesheet" href="member_View/join.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">

function checkValue()
{
    var form = document.userInfo;
    var regExp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;

    if(!form.userId.value){
        alert("아이디를 입력하세요.");
        return false;
    }
    
    if((form.userId.value < "0" || form.userId.value > "9") && (form.userId.value < "A" || form.userId.value > "Z") && (form.userId.value < "a" || form.userId.value > "z")){ 
        alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
    }
    
    if(form.idDuplication.value != "idCheck"){
        alert("아이디 중복체크를 해주세요.");
        return false;
    }
    
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
	<form action="insert" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userId" maxlength="20"
					placeholder="아이디"></td>
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
		<input type="submit" value="회원가입">
		<input type="button" value="취소"	
		onclick="location.href ='main.jsp?ContentPage=slide_main.jsp'" id="join_back_b">
	</form>
</body>
</html>