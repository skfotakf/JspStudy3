<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>web_Study</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<div class="container">
    	<jsp:include page="include/header_include.jsp" />
       
    
	    <main>
	    	<h1>자기소개 페이지</h1>
    	
    
<% 
			
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
	
%>
			<h1>아이디 : <%=id %></h1>
			<h1>비밀번호 : <%=pwd %></h1>
			<h1>이름 : <%=name %></h1>
			<h1>연락처 : <%=phone %></h1>
	
		</main>
	    <jsp:include page="include/footer_include.jsp" />
    </div>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a04df2c0ca.js" crossorigin="anonymous"></script>
</body>
</html>