<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" method="post">
		<p>
			用户名:<input type="text" name="uname" size="32">
		</p>
		<p>
			密&nbsp;码:<input type="password" name="upass" size="32">
		</p>
		<input type="submit" value="登录"> <input type="reset"
			value="重置">
	</form>
	<% //用户名和密码
	String name=request.getParameter("uname");//取得name信息
	String password=request.getParameter("upass");//取得password信息
	//进行用户名和密码验证 
	if(!(name==null||"".equals(name)||password==null||"".equals(password))){
		if("zhuzong".equals(name)&&"123456".equals(password)){
			response.setHeader("refresh", "3;URL=welcome.jsp");
			session.setAttribute("userid", name);//将登录名保存在session 
			%>
			<h3>用户登陆成功，两秒后跳转到欢迎页面</h3>
			<h3>如果没有跳转，请按<a href="welcome.jsp">这里</a></h3>
			<% 
		}else{//登录失败给出的错误信息
			%>
			<h3>错误的用户名或密码！</h3>
			<% 
		}
	}
	%>
</body>
</html>