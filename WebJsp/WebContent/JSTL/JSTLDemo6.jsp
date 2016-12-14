<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sfx.web.bean.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String address="Beijing,Shanghai:Guangzhou;Shenzheng!Nanjing,Xian,Donggaun:Suzhou";
	request.setAttribute("address", address);
	%>
	<c:forTokens var="addr" items="${address}" delims="," varStatus="status">
	${status.count}、${addr}<br/>
	
	</c:forTokens>
	<hr/>
	<c:forTokens var="addr" items="${address}" delims=",;:!" varStatus="status">
	${status.count}、${addr}<br/>
	</c:forTokens>
</body>
</html>