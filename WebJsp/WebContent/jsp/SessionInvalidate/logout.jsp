<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("refresh", "3;URL=login.jsp");//定时跳转
		session.invalidate();//注销
	%>
	<h3>你已成功登录本系统，两秒后跳转回首页!</h3>
	<h3>
		如果没有跳转，请<a href="login.jsp"></a>点击这里!
	</h3>
</body>
</html>