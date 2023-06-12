<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>내장 객체 - response</title>
	</head>
	<body>
	    <h2>1. 로그인 폼</h2>
	    <% 
	    	String loginErr = request.getParameter("loginErr");
	    	if (loginErr != null) {
	    %>
	    <div style="color: red; padding-bottom: 1vh">아이디/비밀번호를 확인하세요.</div>
	    <%
	    	}
	    %>
	    
	    <form action="./login.jsp" method="post">
	        아이디 : <input type="text" name="user_id" /><br />
	        패스워드 : <input type="text" name="user_pwd" /><br />
	        <input type="submit" value="로그인" />
	    </form>
	</body>
</html>