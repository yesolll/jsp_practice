<%@ page import="java.util.HashMap"%>
<%@ page import="common.dto.Person"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head><title>application 영역</title></head>
	<body>
	    <h2>application 영역의 공유</h2>
	    <%
		    Map family = new HashMap();
		    family.put("mom", new Person("봉미선", 29));
		    family.put("dad", new Person("신형만", 35));
		    family.put("child1", new Person("신짱구", 5));
		    family.put("child2", new Person("신짱아", 1));
		    application.setAttribute("family", family);
	    %>
	    application 영역에 속성이 저장되었습니다.
	</body>
</html>