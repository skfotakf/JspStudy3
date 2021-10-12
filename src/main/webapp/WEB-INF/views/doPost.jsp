<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>doPost Study	</title>
</head>
<body>
	<div style="border:1px solid black">
		<form action="gyu" method="get">
			<input type="hidden" name="flag" value="1">
			<label>아이디</label>		
			<input type="text" name="id" value="">
			<label>비밀번호</label>
			<input type="password" name="pwd" value="">
			<label>이름</label>
			<input type="text" name="user_name" value="">
			<input type="submit" value="get전송">
		</form>
	</div>
	
	<div style="border:1px solid black">
		<form action="gyu" method="post">
			<input type="hidden" name="flag" value="1">
			<label>아이디</label>		
			<input type="text" name="id" value="">
			<label>비밀번호</label>
			<input type="password" name="pwd" value="">
			<label>이름</label>
			<input type="text" name="user_name" value="">
			<input type="submit" value="post전송">
		</form>
	</div>
	
	<div>
		<label>아이디</label>
		<label><%=application.getAttribute("id") %></label>
		<label>비밀번호</label>
		<label><%=application.getAttribute("password") %></label>
		<label>이름</label>
		<label><%=application.getAttribute("myName") %></label>
		<label>flag</label>
		<label><%=application.getAttribute("flag") %></label>
		<label><%=application.getAttribute("test") %></label>
	</div>
</body>
</html>