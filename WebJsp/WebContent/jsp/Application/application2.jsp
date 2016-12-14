<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application2</title>
</head>
<body>
<h1>这是跳转页面</h1>
	<%
		String userName = (String) application.getAttribute("name");
		Date userBirthday = (Date) application.getAttribute("birthday");
	%>
	<h2>
		姓名:<%=userName%></h2>
	<h2>
		生日：<%=userBirthday%></h2>
</body>
</html>