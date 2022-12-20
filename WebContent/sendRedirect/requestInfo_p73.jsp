<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestInfo(p73)</title>
</head>
<body>
<h2>★★★★★★★request 객체 (p73)</h2>
<p>http:/localhost:8088/webpro/ch03/requstInfo_p73.jsp</p>
<hr/>
<ul>
	<li>request.getRemoteAddr() : <%= request.getRemoteAddr() %></li>
	<li>request.getContentLength() : <%= request.getContentLength() %></li>
	<li>request.getCharacterEncoding() : <%= request.getCharacterEncoding() %></li>
	<li>request.getContentType() : <%= request.getContentType() %></li>
	<li>request.getProtocol() : <%= request.getProtocol() %></li>
	<li>request.getMethod() : <%= request.getMethod() %></li>
	<li>request.getRequestURI() : <%= request.getRequestURI() %></li>
	<li>★★★★★★★request.getContextPath() : <%= request.getContextPath() %></li>
	<li>request.getServerName() : <%= request.getServerName() %></li>
	<li>request.getServerPort() : <%= request.getServerPort() %></li>
</ul>
</body>
</html>