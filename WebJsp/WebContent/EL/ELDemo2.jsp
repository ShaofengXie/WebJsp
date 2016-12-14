<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.sfx.web.bean.*"%>
<jsp:useBean id="book" class="com.sfx.web.bean.BookBean" scope="page">
	<jsp:setProperty property="bookName" name="book" value="AAAA" />
	<jsp:setProperty property="bookNum" name="book" value="1111" />
</jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ page isELIgnored="false" %>
	<%pageContext.setAttribute("color", "lightblue");%>
</head>
<body bgcolor= ${pageScope.color} >
	<span>${'${'}bookName}:</span>${book.bookName}<br />
	<span>${'${'}bookNum}:</span>${book.bookNum}<br />
	<span>${'${'}A}:</span>${A}<br />
	<span>${'${'}color}:</span>${color}<br />
	
</body>
</html>