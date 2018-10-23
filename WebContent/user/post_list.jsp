<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@page import="java.util.Date"%>
<%@ page import="member.postForm"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>게시판</title>
<link rel="stylesheet" href="post.css" type="text/css"/>
</head>
<body>

<jsp:useBean id="data" class="member.DataManager" scope="page" />

<div class="header">
	POST
</div>
    <a href="<%=request.getContextPath()%>/user/member_info.jsp">회원정보</a>
    <br />
<table>
	<tr>
		<th><h5>title</h5></th>
		<th><h5>id</h5></th>
		<th><h5>date</h5></th>
	</tr>
<%
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	postForm post = data.getPost();
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	String rPath = request.getContextPath();
    String url = "jdbc:mysql://localhost:3306/my_site";
    String user = "jsp_user";
    String pass = "qqsseer1";
    try {
    	Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, user, pass);
    	stmt = con.createStatement();
    	rs = stmt.executeQuery("select * from post");
    	while (rs.next()) {
        	out.print("<tr>");
    		out.print("<td>" + "<a href=" + rPath + "/user/post_detail.jsp" + ">" + rs.getString("title") + "</a>" + "</td>");
    		out.print("<td>" + rs.getString("id") + "</td>");
    		out.print("<td>" + formatter.format(post.getReg_date()) + "</td>");
    		out.print("</tr>");
    	}
    } catch (Exception e) {
    	e.printStackTrace();
    }

%>
</table>
    <a href="<%=request.getContextPath()%>/user/post_form.jsp">글쓰기</a>
    <br />
</body>
</html>