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
<div class="container" style=" padding-top: 0px;">
		<div class="card w-75 mx-auto my-5">
		  <form action="statement">
			<div class="card-header text-center"><h5>Account Transaction</h5></div>
			<div class="card-body" style="background-color: #bdbdbc;">
				
					<div class="form-group">
						<label>Account Number</label> 
						<input type="text" name="s1" class="form-control" placeholder="Enter acc no.">
					</div>
					<br>
					<div class="text-center">
						<button type="submit" class="btn btn-primary" style="background-color:#007aff;" value="show" name="">Show Statement</button>
	               
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