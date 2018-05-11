<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ch06 : checkOut.jsp</title>
</HEAD>
<body bgcolor="#ADD8E6">
<%-- 20151080 박은혜 --%> 
<div align="center">
<H2>장바구니</H2>
장바구니에 담긴 상품 목록
<HR>
<%
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null) {
		out.println("선택한 상품이 없습니다.!!!");
	}
	else {
		for(Object productname:list) {
			out.println(productname+"<BR>");
		}
	}
%>

<a href="logout.jsp">로그아웃</a>
</div>
</body>
</html>