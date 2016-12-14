<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span>${'${'}pageContext.request.queryString }:</span>${pageContext.request.queryString}<br />
	<span>${'${'}pageContext.request.requestURl}:</span>${pageContext.request.requestURL}<br />
	<span>${'${'}pageContext.request.contextPath}:</span>${pageContext.request.contextPath}<br />
	<span>${'${'}pageContext.request.method}:</span>${pageContext.request.method}<br />
	<span>${'${'}pageContext.request.remoteAddr}:</span>${pageContext.request.remoteAddr}<br />
	<span>${'${'}pageContext.request.remoteUser}:</span>${pageContext.request.remoteUser}<br />
	<span>${'${'}pageContext.request.protocol}:</span>${pageContext.request.protocol}<br />
	<span>${'${'}pageContext.session.id}:</span>${pageContext.session.id}<br />
	<%-- <span>${'${'}pageContext.session.new}:</span>${pageContext.session.new}<br /> --%>
	<span>${'${'}pageContext.servletContext.serverInfo}:</span>${pageContext.servletContext.serverInfo}<br />

</body>
</html>