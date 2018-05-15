<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "hw.hw02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="grade" class="hw.hw02.GradeBean"/>
<jsp:setProperty name="grade" property="*"/>
<jsp:useBean id="gm" class="hw.hw02.GradeManager" scope="application"/>
<% gm.add(grade); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>grade_add.jsp</title>
</head>
<body>
<%-- 20151080 박은혜 --%> 
<div align = "center">
<h1>등록내용</h1>
이름:<jsp:getProperty property="username" name="grade"/></br>
성적: <%=grade.getScore() %></br>
등급: <%=grade.getGrade() %></br>
<hr>
<a href = "grade_list.jsp">목록보기</a>
</div>

</body>
</html>