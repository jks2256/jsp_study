<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
	String id = null;
	String pw = null;
	if(session.getAttribute("id")==null | session.getAttribute("pw")==null) {
		response.sendRedirect("login.html");
	} else {
		id = (String)session.getAttribute("id");
		pw = (String)session.getAttribute("pw");
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member.jsp</title>
</head>
<body>
	<h2>로그인한 회원들만 볼 수 있는 페이지 입니다.</h2> <hr>
	     <%=id %> 회원님 환영합니다!!!!<br>
	    <a href= "logout.jsp">로그아웃</a>

</body>
</html>