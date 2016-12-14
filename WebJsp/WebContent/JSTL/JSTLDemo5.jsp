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
	String []books={"Java Web程序设计" ,"操作系统","C语言程序设计","Java语言程序设计"};
	request.setAttribute("book", books);
	%>
	<h3>全部数目:</h3>
	<c:forEach var="bookName" items="${book}">
	${bookName}<br/>
	</c:forEach>
	<hr/>
	<h3>显示从10到15的整数值:</h3>
	<c:forEach var="i" begin="10" end="15" step="1">
	${i}&nbsp;
	</c:forEach>
</body>
</html>