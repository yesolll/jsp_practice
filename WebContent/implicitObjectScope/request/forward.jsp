<%@ page import="common.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>request 영역</title>
	</head>
	<body>
	    <h2>포워드로 전달된 페이지</h2>
	    <h4>3. RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
	    <%  
	    	Person pPerson = (Person)(request.getAttribute("requestPerson"));
	    %>
	    <ul>
	        <li>String : <%= request.getAttribute("requestString") %></li>
	        <li>Person : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
	    </ul>
	    <h4>4. 매개변수로 전달된 값 출력하기</h4>
	    <%
	        request.setCharacterEncoding("UTF-8");
	        out.println(request.getParameter("paramHan"));
	        out.println(request.getParameter("paramEng"));
	    %>
	</body>
</html>