<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session</title>
</head>
<body>
	<%
		session.setAttribute("name", "zhudage");
		session.setAttribute("birthday", "2015-12-05");
	%>
	<%
		String userName = (String) session.getAttribute("name");
		String userBirthday = (String) session.getAttribute("birthday");
	%>
	<h2>
		姓名:<%=userName%></h2>
	<h2>
		生日:<%=userBirthday%></h2>
</body>
</html>