<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>application</title>
</head>
<body>
<h1>��������ҳ��</h1>
	<%
		application.setAttribute("name", "��Ԫ�");
		application.setAttribute("birthday", new Date());
	%>
	<!-- <a href="application2.jsp">��ת</a> -->
	<jsp:forward page="application2.jsp"/>
</body>
</html>