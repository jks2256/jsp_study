<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<title>selProduct2.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8"); // euc-kr
	session.setAttribute("username",request.getParameter("username"));
%>
<body bgcolor="#ADD8E6">
<%-- 20151080 박은혜 --%>  
<div align="center">
	<H2> ٩(ᐛ)و 비회원님은 상품조회만 가능합니다 ٩(ᐛ)و </H2>
	<HR>
	
	<form name="form1" method="POST" action="add.jsp">
		<SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT>
		
	</form>
	<HR>
	<form name = "form2" method = "POST" action= "login.jsp">
		<input type="submit" value="첫화면으로"/>
	</form>
	
	<div align="justify">

	<img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\1.jpg" width="200" height="200">
	<img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\2.jpg" width="200" height="200">
	<img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\3.jpg" width="200" height="200">
	<img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\4.jpg" width="200" height="200">
	<img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\5.jpg" width="200" height="200">
</div>
</body>
</html>




