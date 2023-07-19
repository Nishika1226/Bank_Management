<%@page import="bms.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>
</head>
<body>
 <%@include file="/include/navbar.jsp"%>
   <section id="hero" class="d-flex align-items-center" >

		<table border="2" , align="center", height="100px" style="background-color: white;">
		
		<tr>
		<th style="color:blue;"><%
Account a1 = (Account)request.getAttribute("account");
		if(a1!=null){
			out.print(a1);
		}

	%>
		</th>
		
		</tr>
		
		

</table>
		
	</div>
  </section>
  <%@include file="/include/services.jsp"%>
    <%@include file="/include/contact.jsp"%>
	<%@include file="/include/footer.jsp"%>
	
</body>
</html>