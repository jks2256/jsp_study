<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키 조회 예제</title>
</head>
<body>
	<h1>쿠키 조회 예제</h1>
	<hr>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies ==null){
			out.println("쿠키가 없습니다.");
		}
		else{
			/*
			for (int i = 0; i < cookies.length; i++){
				out.println("쿠키이름(name):" + cookies[i].getName() + ",");
				out.println("쿠키 값(value):" + cookies[i].getValue() + "<br />");
			}
			*/
			for(Cookie c : cookies) {
				out.println("쿠키이름(name):" + c.getName() + ",");
				
				if(!c.getName().equals("lastConnect")) {
					out.println("쿠키 값(value):" + c.getValue() + "<br />");
					
				}
				else {
	//				Date d = new Date(Long.parseLong(c.getValue()));
	//				out.println("쿠키 값(value): " + d.toString() + "<br />");
	
					out.println("쿠키 값(value) : " + URLDecoder.decode(c.getValue(), "UTF-8") + "<br />");
				}
				
			}
		} // 공백에 대한 오류문제는 6장 강의자료 보면서 다시한번 공부해보기
			
	%>

</body>
</html>