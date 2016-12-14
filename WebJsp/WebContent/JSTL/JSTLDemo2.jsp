<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sfx.web.bean.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>22222</title>
</head>
<body>
	<%
		BookBean bookBean = new BookBean();//实例化类BookBean的对象bookBean
		pageContext.setAttribute("book", bookBean);//将bookBean出给页面范围的book
		
	%>
	<c:set target="${book}" property="bookName">math</c:set>
	<span>${'${'}book}:</span>${book.bookName}<br />
	<c:out value="我是输出"></c:out><br/>
	<c:out value="${book.bookName}"></c:out>
	<hr/>
	<c:out value="China" escapeXml="true" ></c:out><br/>
	<c:out value="China" escapeXml="false" ></c:out><br/>
	<c:out value="<China>" escapeXml="true" ></c:out><br/>
	<c:out value="<China>" escapeXml="false" ></c:out><br/>
	<c:out value="<b><i>China</i></b>" escapeXml="true" ></c:out><br/>
	<c:out value="<b><i>China</i></b>" escapeXml="false" ></c:out><br/>
	<hr/>
	<c:set var="info" value="Hello World!!!"></c:set>
	<span>${'${'}info}:</span>${info}<br/>
	<c:remove var="info"/>
	<span>${'${'}info}:</span>${info}
	<hr/>
	
</body>
</html>