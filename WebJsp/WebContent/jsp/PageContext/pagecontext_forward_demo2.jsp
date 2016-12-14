<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>222222</title>
</head>
<body>
	<%
		//从session范围中取出属性
		String info = pageContext.getRequest().getParameter("info");
	%>
	<h3>
		info=<%=info%></h3>
	<h3>
		realpath=<%=pageContext.getServletContext().getRealPath("/")%></h3>
</body>
</html>