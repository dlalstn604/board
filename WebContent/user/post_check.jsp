<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ page import="member.MemberInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>게시글</title>
</head>
<body>
    <jsp:useBean id="mem" class="member.MemberInfo" scope="page" />
    <jsp:useBean id="post" class="member.postForm" scope="page" />
    <jsp:setProperty name="post" property="*" />
    <jsp:useBean id="data" class="member.DataManager" scope="page" />
    <%
    	String id = (String) session.getAttribute("ID");
        String rPath = request.getContextPath();
        MemberInfo member = data.getMember(id);
        String title = request.getParameter("title");
        if (!data.isMember(mem.getId(), mem.getPass())) {
            if (data.insertPost(post, member) != 0) {
                out.print("<h3>게시판에 글이 등록되었습니다.</h3>");
                out.print("<h3><a href=\""+rPath+"/user/member_info.jsp\">회원정보 화면으로 돌아가기</a></h3>");
                out.print("<h3><a href=\""+rPath+"/user/post_list.jsp\">게시판으로 가기</a></h3>");
            } else {
                out.print("<h3>실패하였습니다. 잠시 후 다시 시도해 주세요.</h3>");
                out.print("<h3><a href=\""+rPath+"/user/member_info.jsp\">회원정보 화면으로 돌아가기</a></h3>");
            }
        }
    %>
</body>
</html>