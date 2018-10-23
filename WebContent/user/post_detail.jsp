<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>제목없음</title>
<link rel="stylesheet" href="post.css" type="text/css"/>
</head>
<body>
<div class="header">
	POST
</div>
<%
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
		out.print("<h2>" + "ddd" + "</h2>");
    } catch (Exception e) {
    	e.printStackTrace();
    }
%>
</body>
</html>