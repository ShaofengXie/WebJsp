<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<span>请输入百分制成绩:<input type="text" name="score"> <input
			type="submit" value="提交"> <input type="reset" value="重置"></span>
	</form>
	<c:set var="color" value="red" />
	<c:set var="n" value="${param.score}" />
	<c:if test="${n>=60}" var="iftext">
		<c:set var="color" value="blue" />
	</c:if>
	${'${'}iftext}:${iftext}<br/>
	<font color="${color}" size="6"> <c:choose>
			<c:when test="${n>=90}">
	你的成绩是优秀!!
	</c:when>
			<c:when test="${n>=80&&n<90}">
	你的成绩是良好！！
	</c:when>
			<c:when test="${n>=70&&n<80}">
	你的成绩是中等！！
	</c:when>
			<c:when test="${n>=60&&n<70}">
	你的成绩是合格！！
	</c:when>
			<c:otherwise>
	你的成绩不及格！！
	</c:otherwise>
		</c:choose>
	</font>
</body>
</html>