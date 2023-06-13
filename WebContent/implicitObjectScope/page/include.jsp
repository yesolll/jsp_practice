<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h4 style="padding-left: 50px">--Include 페이지--</h4>
<%
	int includeInteger = (Integer)(pageContext.getAttribute("integer"));
	//String includeString = pageContext.getAttribute("string").toString();
	Person includePerson = (Person)(pageContext.getAttribute("person"));
%>
<ul>
    <li>includeInteger : <%= includeInteger %></li>
    <li>includeString 객체 : <%= pageContext.getAttribute("string") %></li>
    <li>includePerson 객체 : 이름 - <%= includePerson.getName() %>, 나이 - <%= includePerson.getAge() %>세</li>
</ul>