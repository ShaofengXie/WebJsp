<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
Cookie c1=new Cookie("name","zhuzong");
Cookie c2=new Cookie("sex","man");
c1.setMaxAge(3);
c2.setMaxAge(3);
response.addCookie(c1);
response.addCookie(c2);
%>
	<span><b>User-Agent:</b></span>${header["User-Agent"]}<br>
	<span><b>${'${'}name}:</b></span>${cookie.name.value}<br>
	<span><b>${'${'}sex}:</b></span>${cookie.sex.value}<br>
</body>
</html>