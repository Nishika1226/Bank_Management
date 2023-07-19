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
<div class="container" style=" padding-top: 0px;">
		<div class="card w-75 mx-auto my-5">
		  <form action="transaction">
			<div class="card-header text-center"><h5>Account Details</h5></div>
			<div class="card-body" style="background-color: #bdbdbc;">
				
					<div class="form-group">
						<label>Account Number</label> 
						<input type="text" name="c1" class="form-control" placeholder="Enter acc no." required="required">
					</div>
					<div class="form-group">
					<label>Name</label> 
					<input type="text" name="c2" class="form-control" placeholder="Enter name">
					</div>
					<div class="form-group">
						<label>Enter Amount</label> 
						<input type="text" name="c3" class="form-control" placeholder="in rs." required="required">
					</div>
					
					<br>
					<div class="text-center">
						<button type="submit" class="btn btn-primary" style="background-color:#007aff;" value="wd" name="b">Withdraw</button>
	                    <button type="submit" class="btn btn-primary" style="background-color:#007aff;" value="dp" name="b">Deposit</button>			
					</div>
			</div>
		</div>
			<div class="text-center">
	<%String sms  = (String)request.getAttribute("sms"); 
	if(sms!=null)
    {
  	out.print(sms);
    }
	%>
	</div>
		
	</div>
</form>	
<div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200" style=" padding-top: 100px;">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section>
  <%@include file="/include/services.jsp"%>
    <%@include file="/include/contact.jsp"%>
	<%@include file="/include/footer.jsp"%>
	
</body>
</html>