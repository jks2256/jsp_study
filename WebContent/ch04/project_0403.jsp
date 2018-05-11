<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sum1</title>
</head>
<body>
	<%-- 20151080 박은혜 --%>  
	<%@ include file = "header.jsp" %>
	<hr>
	<%!
		//멤버변수 선언
		int i = 0;
		int sum = 0;
		
		public int sum(){ // 1~100까지 더하기
			 for(i=1; i<= 100; i++){
				 sum = sum + i;
			 }
			 return sum;
		}
		
	%>
	<br/>
	<%= "1부터 100까지의 합은 " + sum() + " 입니다"  %>
	

</body>
</html>