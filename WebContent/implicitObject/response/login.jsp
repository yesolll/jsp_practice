<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>내장 객체 - Response</title>
	</head>
	<body>
	<%
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwd"); 
		
		if (id.equalsIgnoreCase("yesolll") && pwd.equalsIgnoreCase("1234")) {
		    response.sendRedirect("loginSuccess.jsp");
		} else {
		    request.getRequestDispatcher("loginForm.jsp?loginErr=1").forward(request, response); 
		}
	%>
	</body>
</html>