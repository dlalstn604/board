<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>게시글 쓰기</title>
</head>
<body>
<script>
function formCheck() {
	var length = document.forms[0].length-1;
	
	for(var i = 0; i < length; i++) {
		if(document.forms[0][i].value == null || document.forms[0][i].value == "") {
			alert(document.forms[0][i].name + "칸을 입력하세요.");
			document.forms[0][i].focus();
			return false;
		}
	}
}
</script>
    <form action="<%=request.getContextPath()%>/user/post_check.jsp" method="post" onsubmit="return formCheck();">
        <table>
            <tr>
                <td>제목</td>
                <td><input type="text" name="title" /></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea name="text" id="" cols="30" rows="10"></textarea></td>
            </tr>
            <tr>
                <td colspan=2><input type="submit" value="등록" /></td>
            </tr>
        </table>
    </form>
</body>
</html>