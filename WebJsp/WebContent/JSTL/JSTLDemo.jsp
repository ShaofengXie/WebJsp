<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sfx.web.bean.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>11111111</title>
</head>
<body>
	<%
		BookBean bookBean = new BookBean();//实例化类BookBean的对象bookBean
		pageContext.setAttribute("book", bookBean);//将bookBean出给页面范围的book
		
	%>
	<c:set var="name" value="zhuzong" scope="page"></c:set>
	<span>${'${'}name}:</span>${name}<br />
	<c:set var="name2" scope="page">zhudage</c:set>
	<span>${'${'}name2}:</span>${name2}<br />
	<%-- <c:set target="${book}" property="bookName" value="math" />//设置页面book对象的bookName的值为math
	<span>${'${'}book}:</span>${book.bookName}<br />//输出得到book属性bookName的值 --%>
	<c:set target="${book}" property="bookName">math</c:set>
	<span>${'${'}book}:</span>${book.bookName}<br />
</body>
</html>