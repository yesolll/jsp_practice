<%@ page import="common.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 속성 저장 - Attribute는 Object 타입으로 저장됨
	pageContext.setAttribute("integer", 1000);
	pageContext.setAttribute("string", "문자열");
	pageContext.setAttribute("person", new Person("김건반", 30)); 
%>
<html>
	<head>
		<title>page 영역</title>
	</head>
	<body>
	    <h2>page 영역의 속성값 읽기</h2>
	    <%
		    // 속성 읽기 - Object >>> convert
		    int pageInteger = (Integer)(pageContext.getAttribute("integer"));
		    String pageString = pageContext.getAttribute("string").toString();
		    Person pagePerson = (Person)(pageContext.getAttribute("person"));
	    %>
	    <ul>
	        <li>pageInteger : <%= pageInteger %></li>
	        <li>pageString  : <%= pageString %></li>
	        <li>pagePerson  : 이름 - <%= pagePerson.getName() %>, 나이 - <%= pagePerson.getAge() %>세</li>
	    </ul>
	
	    <h2>include된 파일에서 page 영역 읽어오기</h2>
	    <%@ include file="./include.jsp" %>
	       
	    <h2>페이지 이동 후 page 영역 읽어오기</h2>
	    <a href="./location.jsp">페이지 이동하기</a>
	</body>
</html>