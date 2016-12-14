<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.sfx.web.bean.*"%>
<jsp:useBean id="book" class="com.sfx.web.bean.BookBean" scope="page">
	<jsp:setProperty property="bookName" name="book" />
	<jsp:setProperty property="bookNum" name="book" />
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书订购</title>
</head>
<body>
	<h3>图书订购清单</h3>
	<hr>
	书名:<%=book.getBookName()  %><br> 数量:<%=book.getBookNum()  %><br>
</body>
</html>