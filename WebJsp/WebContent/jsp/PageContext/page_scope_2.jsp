<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>page_scope_02</title>
</head>
<body>
<h1>此页面是设置属性页面</h1>
<% 
pageContext.setAttribute("name", "zhulaozong");
pageContext.setAttribute("birthday", new Date());
%>

<jsp:forward page="page_scope_3.jsp"/>

</body>
</html>