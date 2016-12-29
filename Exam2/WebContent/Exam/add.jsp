<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>添加信息：</h1>
	<form action="<%=request.getContextPath()%>/sevlet/Add" method="post">
	<label>姓名：</label>
	<input name="name" type="text" size="11">
	<label>班级：</label>
	<input name="clas" type="text" size="11">
	<label>课程：</label>
	<input name="lesson" type="text" size="11">
	<label>分数：</label>
	<input name="score" type="text" size="11">
	<br>
	<input name="submit" type="submit" value="提交">
	<input name="reset" type="reset" value="重置">
	</form>
</body>
</html>