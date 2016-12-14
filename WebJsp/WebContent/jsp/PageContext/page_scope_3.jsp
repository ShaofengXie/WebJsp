<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>page_scope_03</title>
</head>
<body>
<h1>此页面是得到属性页面</h1>

<% //此页面得到数据
String userName= (String)pageContext.getAttribute("name");
Date userBirthday=(Date)pageContext.getAttribute("birthday");
%>
<h2>姓名:<%=userName  %></h2>
<h2>生日:<%=userBirthday  %></h2>
</body>
</html>