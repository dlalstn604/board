<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="<%=request.getContextPath()%>/jquery/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/user/register_form.js"></script>
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
                <td><input type="text" name="phone" class="phone"/></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="email" class="email"/></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="address"/></td>
            </tr>
            <tr>
                <td colspan=2><input type="submit" value="가입" id="button" /></td>
            </tr>
        </table>
    </form>
</body>
</html>