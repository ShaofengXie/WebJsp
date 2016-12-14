<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.sfx.web.bean.*"%>
<jsp:useBean id="book" class="com.sfx.web.bean.BookBean" scope="page">
	<jsp:setProperty property="bookName" name="book" />
	<jsp:setProperty property="bookNum" name="book" />
</jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<p>三目运算符</p>
	<span>${'${'}A ?0:1 }:</span>${ A?0:1 }<br />
	<span>${'${'}!A ?0:1 }:</span>${ !A?0:1 }<br />
	<span>${'${'}(A=true) ?0:1 }:</span>${ (A=true)?0:1 }<br />
	<span>${'${'}(A=false) ?0:1 }:</span>${ (A=false)?0:1 }<br />
	<span>${'${'}(A!=true) ?0:1 }:</span>${ (A!=true)?0:1 }<br />
	<span>${'${'}(A!=false) ?0:1 }:</span>${ (A!=false)?0:1 }<br />
	<hr>
	<p>算数运算符</p>
	<span>${'${'}5+3 }:</span>${5+3 }<br />
	<span>${'${'}5-3 }:</span>${5-3 }<br />
	<span>${'${'}5mod3 }:</span>${5 mod 3 }<br />
	<span>${'${'}5%3 }:</span>${5%3 }<br />
	<span>${'${'}5/3 }:</span>${5/3 }<br />
	<%-- <span>${'${'}5div3 }:</span>${5 div 3}<br /> --%>
	<hr>
	<p>关系运算符</p>
	<span>${'${'}7>3 }:</span>${7>3 }<br />
	<span>${'${'}7&gt;3 }:</span>${7 gt 3 }<br />
	<span>${'${'}7<3 }:</span>${7<3 }<br />
	<span>${'${'}7&lt;3 }:</span>${7 lt 3 }<br />
	<span>${'${'}7>=3 }:</span>${7 >=3 }<br />
	<span>${'${'}7&ge;3 }:</span>${7 ge 3 }<br />
	<span>${'${'}7<=3 }:</span>${7<=3 }<br />
	<span>${'${'}7&le;3 }:</span>${7 le 3 }<br />
	<span>${'${'}7==3 }:</span>${7 == 3 }<br />
	<span>${'${'}7&eq;7 }:</span>${7 eq 7 }<br />
	<span>${'${'}7&eq;3 }:</span>${7 eq 3 }<br />
	<span>${'${'}7&ne;7 }:</span>${7 != 7 }<br />
	<span>${'${'}7&ne;3 }:</span>${7 != 3 }<br />
	<hr>
	<p>Empty运算符</p>
	<span>${'${'}A empty}:</span>${empty A}<br />
	<span>${'${'}book empty}:</span>${empty book}<br />
	<span>${'${'}A}:</span>${A}<br />
	<hr>
	<p>逻辑运算符</p>
	<span>${'${'}true&&true}:</span>${ true&&true }<br />
	<span>${'${'}true and true}:</span>${ true and true }<br />
	<span>${'${'}true||false}:</span>${ true||false }<br />
	<span>${'${'}true or false}:</span>${ true or false }<br />
	<span>${'${'}not true}:</span>${ not true }<br />
	<span>${'${'}! true}:</span>${ ! true }<br />
</body>
</html>