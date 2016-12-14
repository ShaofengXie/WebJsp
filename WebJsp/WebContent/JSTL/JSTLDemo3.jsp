<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sfx.web.bean.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>3333333</title>
</head>
<body>
	
	<c:catch var="errmsg">
	<%-- <%
	int a=10/0;
	%> --%>
	${10/0}
	</c:catch>
	<h3>异常信息:${errmsg}</h3>
	
</body>
</html>