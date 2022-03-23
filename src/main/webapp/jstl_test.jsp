<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="score" value="Korea" /> <!--  변수 선언 -->
	변수 : <c:out value="${score }" /> <br> <!--  변수 출력 -->
	<c:remove var="score"/> <!--  변수 삭제 -->
	변수 : <c:out value="${score }" /> <br> <!--  변수 출력 -->
	
	
	<c:catch var="error"> <!--  예외 처리 -->
		<%= 2/0 %>
	</c:catch>
	<br>
	<c:out value="${error }" /> <!--  에러 내용 출력 -->
	
	<br><br><br>
	<!--  많이 씀! -->
	
	<c:if test="${3>1 }"> <!-- if 조건문이 참일 때 실행 -->
		안녕하세요.	
	</c:if>
	
	<c:if test="${3<1 }">
		반갑습니다.
	</c:if>
	
	<br><br><br>
	<!--  자바 for문 : for(int i=0;i<10;i++) -->
	<c:forEach var="i" begin="0" end="9" step="1">
		안녕<br>
		i = ${i }<br>
	</c:forEach>
	
	
	
</body>
</html>