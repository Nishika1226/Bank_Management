<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>
</head>
<body>
 <form action="modify">
 <%@include file="/include/navbar.jsp"%>
   <section  class="d-flex align-items-center" style="background: #37517e;">
<div class="container" style=" padding-top: 0px; margin-top: 0px">
		<div class="card w-50 mx-auto my-5">
		  
			<div class="card-header text-center"><h5>Modify Account Details</h5></div>
			<div class="card-body" style="background-color: #bdbdbc;">
			
					<div class="text-center">
					<h5>Account Details</h5>
					</div>
					<div class="form-group">
						<label>Account Number</label> 
						<input type="text" name="a1" class="form-control"  placeholder="Enter your AccNo." required="required" value="" >
					</div>
					<br>
				<div class="row g-3">
					<div class="col">
						<label for="acc">Account Type:</label>
                            <select id="" name="a13" required="required">
                              <option>Saving Account</option>
                              <option>Current Account</option>
                             
                            </select>
					</div>
					</div>
					<hr>
					<div class="text-center">
					<h5>Personal Details</h5>
					</div>
	       			<div class="row g-3">
						<div class="col">
						<label>First Name</label> 
						<input type="text" name="a2" class="form-control" placeholder="Enter First name" required="required">
					</div>
					<div class="col">
						<label>Last Name</label> 
						<input type="text" name="a3" class="form-control" placeholder="Enter Last name" required>
					</div>
					</div>
					<div class="form-group">
						<label>Aadhaar Number</label> 
						<input type="text" name="a4" class="form-control" placeholder="Enter your aadhaar number " required>
					</div>
					
				<div class="form-group">
						<label>Date of Birth</label> 
						<input type="date" name="a5" class="form-control" placeholder="" required>
					</div>
					<div class="form-group" style=" margin-top:8px;margin-bottom:8px;" >
						<label>Gender</label> 
						<input type="radio" name="a6" class="form-group row-md-6" required value="male">Male
						<input type="radio" name="a6" class="form-group row-md-6" required value="female">Female
						<input type="radio" name="a6" class="form-group row-md-6" required value="others">Others
				</div>
						
				<div class="row g-3">
						<div class="col">
						<label>Email Id</label> 
						<input type="email" name="a7" class="form-control" placeholder="eg.abc@gmail.com" required="required">
					</div>
					<div class="col">
						<label>Mobile Number</label> 
						<input type="text" name="a8" class="form-control" placeholder="+91" required>
					</div>
					</div>
						
				<div class="form-group">
						<label>Permanent Address</label> 
						<input type="text" name="a9" class="form-control" placeholder="Address" required>
					</div>
					<div class="row g-3">
						<div class="col">
						<label>State</label> 
						<input type="text" name="a10" class="form-control" placeholder="State" required="required">
					</div>
					<div class="col">
						<label>City</label> 
						<input type="text" name="a11" class="form-control" placeholder="City" required>
					</div>
					<div class="col">
						<label>Pin-code</label> 
						<input type="text" name="a12" class="form-control" maxlength="6" required>
					</div>
					</div>
				
					<p>
					<div class="form-group">
					    
						<input type="checkbox" name="t2" class="" placeholder="" required>
						<label>I have agreed upon terms of use and privacy policy.</label> 
						
					</div>
			</p>
					<br>
					<div class="text-center">
						<input type="submit" class="btn btn-primary" style="background-color:#007aff;" value="Save and Modify" name="b1">

					</div>
					<div class="text-center" style="color: blue;">
	<%String sms  = (String)request.getAttribute("sms"); 
	if(sms!=null)
    {
  	out.print(sms);
    }
	%>
	</div>
			</div>
		</div>
		<br>
		
		
	</div>
	
	

  </section>
	
	</form>

<%@include file="/include/footer.jsp"%>
</form>
</body>
</html>