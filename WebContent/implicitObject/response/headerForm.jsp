<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>내장 객체 - response</title>
	</head>
	<body>
	    <h2>2. HTTP 응답 헤더 설정하기</h2>
	    <form action="./headerPrint.jsp" method="get">
		        날짜 형식 : <input type="text" name="add_date" value="2023-01-01 07:21" /><br />  
		        숫자 형식 : <input type="text" name="add_int" value="12345" /><br />
		        문자 형식 : <input type="text" name="add_str" value="가나다" /><br />
	        <input type="submit" value="응답 헤더 설정 & 출력" />
	    </form>
	</body>
</html>