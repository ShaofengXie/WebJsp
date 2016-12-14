<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="Own.css" type="text/css">
</head>
<body>
<h1>欢迎光临我的个人网站</h1>

<div class="divcss">
	<form action="LoginReceive.jsp">
		<p style="padding: 30px 0px 10px; position: relative;"><span class="u_logo"></span><input class="ipt" name="userName" type="text" size="18" placeholder="请输入用户名或邮箱" value="" /></p><br /> 
		<p style="position: relative;"><span class="p_logo"></span><input class="ipt" name="passWord" type="password" size="18" placeholder="请输入密码" value="" /></p><br />
		<span class="inputcss"><input type="submit" value="提交" name="Submit" />
		<input type="reset" value="重置" name="Submit1"/></span>
	</form>
	</div>

</body>
</html>