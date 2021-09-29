<%@page import="com.web.dao.UserDaoImpl"%>
<%@page import="com.web.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%! 
  	String name=null;
 	UserDao userDao = new UserDaoImpl();
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello</title>
</head>
<body>
<%
	name = userDao.getUserName("gyu","1234");
	name = name + "님 환영합니다.";
	int flag = userDao.login("gyu","12345");
	String msg = null;
	if (flag== 0) {
		msg = "존재하지 않는 아이디입니다. 가입 후 이용 바랍니다.";
	} else if (flag == 1){
		msg = "비밀번호가 일치하지 않습니다. 다시 확인 부탁드립니다.";
	} else if (flag == 2) {
		msg = "로그인 성공!";
	} else {
		msg = "DB오류!";
	}
%>
	<h1>안녕?</h1>
	<h1>오랜만이야</h1>
	<h4><%= name %></h4>
	<h4><%= msg %></h4>
</body>
</html>