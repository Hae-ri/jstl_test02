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
	<c:set var="score" value="Korea" /> <!--  ���� ���� -->
	���� : <c:out value="${score }" /> <br> <!--  ���� ��� -->
	<c:remove var="score"/> <!--  ���� ���� -->
	���� : <c:out value="${score }" /> <br> <!--  ���� ��� -->
	
	
	<c:catch var="error"> <!--  ���� ó�� -->
		<%= 2/0 %>
	</c:catch>
	<br>
	<c:out value="${error }" /> <!--  ���� ���� ��� -->
	
	<br><br><br>
	<!--  ���� ��! -->
	
	<c:if test="${3>1 }"> <!-- if ���ǹ��� ���� �� ���� -->
		�ȳ��ϼ���.	
	</c:if>
	
	<c:if test="${3<1 }">
		�ݰ����ϴ�.
	</c:if>
	
	<br><br><br>
	<!--  �ڹ� for�� : for(int i=0;i<10;i++) -->
	<c:forEach var="i" begin="0" end="9" step="1">
		�ȳ�<br>
		i = ${i }<br>
	</c:forEach>
	
	
	
</body>
</html>