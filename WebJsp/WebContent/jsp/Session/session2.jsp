<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session2</title>
</head>
<body>
<h1>这是设置页面</h1>
	<%
		session.setAttribute("name", "zhudage");
		session.setAttribute("birthday", "2015-12-05");
	%>
	<!-- <a href="session3.jsp">跳转</a> -->
	<jsp:forward page="session3.jsp"></jsp:forward>
</body>
</html>