<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="utils.*"
%>
<html>
	<head>
		<title>내장 객체 - request</title>
	</head>
	<body>
		<%
		StringUtil strUtil = new StringUtil();
		
		request.setCharacterEncoding("UTF-8");  
		String id = request.getParameter("id");  
		String gender = strUtil.getKorGender(request.getParameter("gender"));
		String[] interests = request.getParameterValues("interests");  
		String interestStr = "";
		if (interests != null) {  
			for (String interest : interests) {
				interestStr += strUtil.getKorInterest(interest) + " ";
			}
		}
		String introduce = request.getParameter("introduce").replace("\r\n", "<br/>");
		%>
		<ul>
		    <li>아이디 : <%= id %></li>
		    <li>성별 : <%= gender %></li>
		    <li>관심사항 : <%= interestStr %></li>
		    <li>자기소개 : <%= introduce %></li>
		</ul>
	</body>
</html>