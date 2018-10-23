<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="<%=request.getContextPath()%>/jquery/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#button").click(function() {
		if($(".id").val().trim() == '') {
			alert("아이디가 공란입니다.");
			return false;
		} else if($(".pass").val().trim() == '') {
			alert("비밀번호가 공란입니다.");
			return false;
		} else if($(".pass").val().trim().length < 7) {
			alert("비밀번호를 8자 이상으로 만들어주세요.");
			return false;
		} else if($(".passcheck").val() != $(".pass").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		};
	});
});
</script>
<meta charset="utf-8">
<title>회원가입</title>
</head>
<body>
    <form action="<%=request.getContextPath()%>/user/register.jsp" class="form" method="post">
        <table>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="id" class="id" /></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="pass" class="pass" /></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="passcheck" class="passcheck"/></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" class="name"/></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" name="phone" /></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" /></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="address" /></td>
            </tr>
            <tr>
                <td colspan=2><input type="submit" value="가입" id="button" /></td>
            </tr>
        </table>
    </form>
</body>
</html>