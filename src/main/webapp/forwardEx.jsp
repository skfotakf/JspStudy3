<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String testId = "gyu";
	String testPwd = "1234";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals(testId)) {
		if(pwd.equals(testPwd)){
%>
		<jsp:forward page="index2.jsp">
			<jsp:param value="조성규" name="name"/>
			<jsp:param value="010-1111-1111" name="phone"/>
		</jsp:forward>
<% 			
		} else {
%>
			<h1>비밀번호가 틀렸습니다.</h1>
<% 
		}
	} else{
%>
		<h1>아이디가 존재하지 않습니다.</h1>		
<%
	}
%>
</body>
</html>