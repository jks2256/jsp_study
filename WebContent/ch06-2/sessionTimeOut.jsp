<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Enumeration, java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 시간 관련 예제</h1>
	<hr><h2>세션 만들기</h2>
	<%! long beforetime = new Date().getTime(); // 이전 페이지 참조 시간을 저장하는 소속 변수 %>
	<%
		long nowtime = new Date().getTime();
		if(session.isNew()) {
			session.setAttribute("id", session.getId());  //세션 id 설정
			session.setAttribute("time", new Date(session.getCreationTime())); //세션생성시간의 설정
			session.setMaxInactiveInterval(5); // 타임아웃 시각(초)의 설정
		}
		else {
			session.removeAttribute("id");
		}
	%>
	<hr><h2>세션 조회</h2>
	세션 ID(유일한 식별자) : <%= session.getAttribute("id") %><br />
	세션 CreationTime : <%= session.getAttribute("time") %><br />
	세션 MaxInactiveInterval : <%= session.getMaxInactiveInterval() %> // 세션 생성 후 경과시간의 출력
	<% long sessiontime = nowtime - session.getCreationTime(); %> 
	세션이 만들어진 이후 지난 시간:  <%= sessiontime/1000 %>초
	<hr>
	<% long inactiveinterval = nowtime - beforetime; %>        // 무반응 시간의 출력
	서버에 반응을 보이지 않은 시간: <%= inactiveinterval/1000 %>초<br />
	위 시간이  <%= session.getMaxInactiveInterval() %>초를 지나면           
	이전 세션이 무효화되고 새로운 세션이 생성<br />
	<% beforetime = nowtime; %>
</body>
</html>