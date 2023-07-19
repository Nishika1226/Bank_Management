
<%@page import="bms.DbService"%>
<%@page import="bms.Userinfo" %>
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
Userinfo u = new Userinfo();
u.setName(request.getParameter("t1"));
u.setPassword(request.getParameter("t2"));
DbService db = new DbService();
int x=db.registerUser(u);
if(x>=1)
		{
			request.setAttribute("sms","<font color=white><b>User Register Successfuly</b></font>");
		}
		else
		{
			request.setAttribute("sms","<font color=red><b>User Could Not Be Registered</b></font>");
		}

%>
<jsp:forward page="register.jsp"></jsp:forward>
</body>
</html>