<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#3BB7A8">
<h3 align="center">登录页面</h3>
	<form action="" method="post" >
		<b>${"First Name"}:<input type="text" value="${'请输入你的名字'}" /></b><br>
		<b>${"Last&nbsp;Name"}:<input type="password" value="${'请输入你的姓氏'}" /></b><br>
		<input type="submit" name="submit" value="${'提交表单'}"> 
		<input type="reset" name="reset" value="${'重置表单'}">

	</form>

</body>
</html>