<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>내장 객체 - out</title>
	</head>
	<body>
	    <%
	   		 
	    	out.print("<h3>버퍼 내용 삭제하기</h3> : 출력 X");
		    out.print("출력되지 않는 텍스트: 출력 X");  // 버퍼에 저장  
		    out.clearBuffer();  // 버퍼를 비움(이 위에 출력 결과 다 사라짐) 
		    out.print("<h3>==============================================================</h3>");
		
		    out.print("<h2>[out 내장 객체 예제]: 맨 위 두 줄은 flush 전 버퍼를 비워서 출력되지 않았다.)</h2>");
	    	
		    out.print("<h3>버퍼 크기 정보 확인</h3>");
		    out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
		    out.print("남은 버퍼의 크기 : " + out.getRemaining() + ": 버퍼가 차서 남은 크기가 줄었다.<br>"); 
		
		    out.print("<h3>flush ==========================================================</h3>");
		    out.flush();
		    out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + ": flush하니 남은 크기가 다시 늘어났다.<br>");
		
		    out.print("<h3>==============================================================</h3>");
		    out.print("<h3>다양한 타입의 값 출력</h3>");
		    out.print(1);
		    out.println("(ln을 써도 줄바꿈은 안 되고 띄어쓰기 정도로만 ->)");
		    out.print(false);
		    out.print('가');
		    
	    %>
	</body>
</html>