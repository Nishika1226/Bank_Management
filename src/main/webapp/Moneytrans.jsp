<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>
</head>
<body>
 <%@include file="/include/navbar.jsp"%>
 	
   <section id="" class="d-flex align-items-center" style="background: #37517e;">
   	
<div class="container"  style=" padding-top: 0px; margin-top: 0px">
		<div class="card w-75 mx-auto my-5">
		  <form action="onlinetrans">
			<div class="card-header text-center"><h5>Online Transactions</h5></div>
			<div class="card-body" style="background-color: #bdbdbc;">
				
				    <div class="form-group">
						<label>Enter your Account No.</label> 
						<input type="text" name="mt1" class="form-control" placeholder="Enter acc no." required="required">
					</div>
					<div class="form-group">
						<label>Enter Receiver's Account No.</label> 
						<input type="text" name="mt2" class="form-control" placeholder="Enter receiver's acc no." required="required">
					</div>
					<div class="form-group">
					<label>Enter Amount</label> 
					<input type="text" name="mt3" class="form-control" placeholder="Enter amount" required="required">
					</div>
					<div class="form-group">
					<label>Enter Username</label> 
					<input type="text" name="mt4" class="form-control" placeholder="Enter username" >
					</div>
					<div class="form-group">
						<label>Enter your Password</label> 
						<input type="password" name="mt5" class="form-control" placeholder="*****" required="required">
					</div>
					
					<br>
					<div class="text-center">
						<button type="submit" class="btn btn-primary" style="background-color:#007aff;" value="" name="">Send</button>
						<div class="text-center" style="">
	<%String sms  = (String)request.getAttribute("sms"); 
	if(sms!=null)
    {
  	out.print(sms);
    }
	%>
	</div>
	                    
					</div>
			</div>
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