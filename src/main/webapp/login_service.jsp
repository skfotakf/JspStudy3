<%@page import="com.web.dao.UserDaoImpl" %>
<%@page import="com.web.dao.UserDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	UserDao userDao = new UserDaoImpl();
%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String msg = null;
	int flag = userDao.login(id, password);
	
	
	if (flag== 0) {
		msg = "존재하지 않는 아이디입니다. 가입 후 이용 바랍니다.";
	} else if (flag == 1){
		msg = "비밀번호가 일치하지 않습니다. 다시 확인 부탁드립니다.";
	} else if (flag == 2) {
		msg = "로그인 성공!";
	} else {
		msg = "DB오류!";
	}
	System.out.println(msg);
	
%>