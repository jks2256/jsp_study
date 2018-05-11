<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Enumeration, java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션만들기</title>
</head>
<body>
	<h1> 세션 생성 및 조회 예제</h1>
	<hr><h2>세션 만들기</h2>
<%
	session.setAttribute("id" ,"hong");
	session.setAttribute("pwd", "1234abcd");
%>
	<hr><h2>세션 조회</h2>
	<p>
		세션 ID : <%= session.getId() %><br />
		세션 CreationTime : <%= new Date(session.getCreationTime()) %> <br />
		
	</p>
	
	<%
		Enumeration<String> e = session.getAttributeNames();
		while (e.hasMoreElements()) { // enumeration 내부에 요소가 더 있는지의 여부를 반환
			String name = e.nextElement(); // enumeration 내부의 다음 요소를 반환
			String value = (String)session.getAttribute(name);
			out.println("세션 name :" + name +", ");
			out.println("세션 value: " + value +"<br>");
		}
	%>
	<p>세션 Invalidate: <% session.invalidate(); %></p> //세션 만료시키기
</body>
</html>