<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	ArrayList<String> list = new ArrayList<String>();
	list.add("첫째");
	list.add("두식이");
	session.setAttribute("list", list);
	%>       
<html>
	<head><title>session 영역</title></head>
	<body>
	    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	    <a href="location.jsp">session/location.jsp 바로가기</a>
	</body>
</html>