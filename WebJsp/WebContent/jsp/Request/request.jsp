<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request</title>
</head>
<body>
<% 
request.setAttribute("name", "zhulaozong");
request.setAttribute("birthday", new Date());
%>

<% 
String userName= (String)request.getAttribute("name");
Date userBirthday=(Date)request.getAttribute("birthday");
%>
<h2>姓名:<%=userName  %></h2>
<h2>生日:<%=userBirthday  %></h2>
</body>
</html>