<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Information表</title>
<script type="text/javascript" for="window" event="onload">
function openText() {
	ArrayList list = (ArrayList)session.getAttribute("list");
}
</script>
<script type="text/javascript">
function add() {
	window.location.href="add.jsp";
	
}
</script>

<style type="text/css">
td {
	width: 50px;
	height: 30px;
	font-family: 楷体;
	font-weight: bold;
}
tr {
	text-align: center;
}
table {
	margin:0px auto;
	width:1000px;
}
</style>
</head>
<body>
<%
ArrayList list = (ArrayList)session.getAttribute("list");
/* int i=(int)Math.ceil(list.size()/4); */
%>
	<center>
		<h1 style="font-family: 楷体;">学生成绩表</h1>
	</center>
	<div style="text-align: center;">
		<span>
			<button type="button" onclick="add()">Add</button>
			<button type="button">Updata</button>
			<button type="button">Delete</button>
			<button type="button">Select</button>
		</span>
	</div>
	<hr>
	
	<table border="1" style="border-collapse: collapse;" width="50%">
		<tr>
			<td>姓名</td>
			<td>班级</td>
			<td>课程</td>
			<td>分数</td>
		</tr>
		
		<tr>
			<td id="row1cos1">${list[0]}</td>
			<td id="row1cos2">${list[1]}</td>
			<td id="row1cos3">${list[2]}</td>
			<td id="row1cos4">${list[3]}</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
</body>
</html>