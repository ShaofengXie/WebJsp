<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<%
		String uname = request.getParameter("userName");
		String pword = request.getParameter("passWord");
		if (uname.equals("zhuzong") && pword.equals("123456")) {
	%>
	<jsp:forward page="Success.html" />
	<%
		} else {
	%>
	<jsp:forward page="Failed.html" />
	<%
		}
	%>
</body>
</html>