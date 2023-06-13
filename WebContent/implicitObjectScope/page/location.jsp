<%@ page import="common.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>page 영역</title>
	</head>
	<body>
	    <h2>페이지 이동 후 page 영역의 속성값 읽기</h2>
	    <%
	    Object locationInteger = pageContext.getAttribute("integer");
	    Object locationString = pageContext.getAttribute("string");
	    Object locationPerson = pageContext.getAttribute("person"); 
	    %>
	    <ul>
	        <li>locationInteger : <%= (locationInteger == null) ? "값 없음" : locationInteger %></li>
	        <li>locationString : <%= (locationString == null) ? "값 없음" : locationString %></li>
	        <li>locationPerson : <%= (locationPerson == null) ? "값 없음" : ((Person)locationPerson).getName() %></li>
	    </ul>
	</body>
</html>