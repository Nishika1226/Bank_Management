<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
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
		  <th>Paid To</th>
		  <th>Amount(Rs.)</th>
		  <th>Date & Time</th>
		</tr>
		
		<%
ArrayList al = (ArrayList)request.getAttribute("history");

for(int i=0; i<al.size()-1;i++)
{
	 Account a = (Account)al.get(i);
	%>
		<tr>
		<td><%= i+1 %></td>
		<td><%= a.getAcno2()%></td>
		<td><%= a.getAmt()%></td>
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
    <th>Your Current Balance</th>
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