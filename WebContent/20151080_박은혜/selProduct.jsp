<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<title> selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8"); // euc-kr
	session.setAttribute("id",request.getParameter("id"));
%>
<body bgcolor="#ADD8E6">
<%-- 20151080 박은혜 --%>  
<div align="center">
	<H2><a id = "#section1">상품선택</a></H2>
	<HR>
	<%=session.getAttribute("id") %>님 환영합니다!!!!
	<a href="logout.jsp">로그아웃</a>
	<HR>
	<form name="form1" method="POST" action="add.jsp">
		<SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT>
		
	<input type="submit" value="추가"/>
	</form>
	</br>
	<a href="checkOut.jsp">장바구니로이동</a>
	</br>
	
	 <h3>상품 상세정보</h3>
	 <table border="1" bgcolor="#FAFAD2">
	  <tr>
            <td>
                <img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\1.jpg" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>사과</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td>2000</td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>맛있는사과</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form2" method="post" action="add.jsp">
                                <input type="hidden" name="productId" value="1">
                                <select name="amount">
                                    <c:forEach begin="1" end="5" var="5">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>                            
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기">
                            </form>
                            <a href="#section1">상품목록</a>
                        </td>
                        
                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table border="1" bgcolor="#FAFAD2">
	  <tr>
            <td>
                <img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\2.jpg" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>귤</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td>2000</td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>맛있는귤</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form2" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="1">
                                <select name="amount">
                                     <c:forEach begin="1" end="5" var="5">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>      
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기">
                            </form>
                          <a href="#section1">상품목록</a>
                        </td>
                        
                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table border="1" bgcolor="#FAFAD2">
	  <tr>
            <td>
                <img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\3.jpg" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>파인애플</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td>2000</td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>맛있는파인애플</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form2" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="1">
                                <select name="amount">
                                     <c:forEach begin="1" end="5" var="5">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>      
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기">
                            </form>
                           <a href="#section1">상품목록</a>
                        </td>
                        
                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table border="1" bgcolor="#FAFAD2">
	  <tr>
            <td>
                <img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\4.jpg" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>자몽</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td>2000</td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>맛있는자몽</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form2" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="1">
                                <select name="amount">
                                    <c:forEach begin="1" end="5" var="5">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>      
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기">
                            </form>
                            <a href="#section1">상품목록</a>
                        </td>
                        
                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    <table border="1" bgcolor="#FAFAD2">
	  <tr>
            <td>
                <img src="C:\IProg\workspace\jspbook\WebContent\20151080_박은혜\5.jpg" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>레몬</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td>2000</td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>맛있는레몬</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form2" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="1">
                                <select name="amount">
                                    <c:forEach begin="1" end="5" var="5">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>      
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기">
                            </form>
                           <a href="#section1">상품목록</a>
                        </td>
                        
                        
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
	 
	
	
</div>
</body>
</html>




