<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bms.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>
<style>

</style>
</head>
<body>
 <%@include file="/include/navbar.jsp"%>
   <section id="hero" class="" >

		<table border="2px" , align="center" style="background-color: white;margin-top:80px">
		
		<tr>
		  <th>S.No.</th>
		  <th>Account No.</th>
		  <th>Debit</th>
		  <th>Credit</th>
		  <th>Date & Time</th>
		</tr>
		
		<%
ArrayList al = (ArrayList)request.getAttribute("alldata");

for(int i=0; i<al.size()-1;i++)
{
	 Account a = (Account)al.get(i);
	%>
		<tr>
		<td><%= i+1 %></td>
		<td><%= a.getAcno()%></td>
		<td><%= a.getWd() %></td>
		<td><%= a.getDp() %></td>
		<td><%= a.getDate()%></td>
		</tr>
	<%
}
%>
</table>
 
<% 
Account a = (Account)al.get(al.size()-1);
%>
<div>
<table border="2px" , style="background-color: white;width:30%;margin-left:68px">
  <tr>
    <th>Current Balance</th>
     <td><%= a.getBal()%></td>	
  </tr>
</table>
</section>
</div>

		
<%@include file="/include/services.jsp"%>
    <%@include file="/include/contact.jsp"%>
 
	<%@include file="/include/footer.jsp"%>
	
</body>
</html>