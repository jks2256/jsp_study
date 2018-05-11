<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Enumeration, java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<title>세션예제</title>
</head>
<body>
	<h1>세선예제</h1>
	<hr>
	<h2>세션 주요 정보 조회</h2>
	세션 ID(유일한 식별자): <%= session.getId() %><br />
	세션 MaxInactiveInterval (기본 세션 유지 시간) : <%= session.getMaxInactiveInterval() %>
	<%
		long mseconds = session.getCreationTime();
		Date time = new Date(mseconds);
	%>
	세션 CreationTime (1970년 1월 1일 0시 이후의 지난 밀리세컨드): <%= mseconds %><br />
	세션 CreationTime (시각으로 다시 계산) : <%= time.toLocaleString() %>
</body>
</html>