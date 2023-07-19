<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>
</head>
<body>
<%String sms  = (String)request.getAttribute("sms"); %>
<form action="save.jsp">
 <%@include file="/include/header.jsp"%>
   <section id="hero" class="d-flex align-items-center" >
<div class="container" style=" padding-top: 0px;">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center"><h5>User Registration</h5></div>
			<div class="card-body" style="background-color: #bdbdbc;">
				
					<div class="form-group">
						<label>Username</label> 
						<input type="text" name="t1" class="form-control" placeholder="Enter mobile no.">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="t2" class="form-control" placeholder="*****">
					</div>
					<br>
					<div class="text-center">
						<button type="submit" class="btn btn-primary" style="background-color:#007aff;" name="b1">Register</button>
					</div>
			</div>
		</div>
		<div class="text-center">
		<a href="login.jsp" style="color:#eef4f7;"><b><u>Back To Login</u></b></a>
		</div>
		<br>
		
		<div class="text-center">
		<% 
	
       if(sms!=null)
       {
     	out.print(sms);
       }
  %>
  </div>
	</div>
	
<div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200" style=" padding-top: 100px;">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section>
   <main id="main">
    <!-- ======= Services Section ======= -->
    <%@include file="/include/services.jsp"%>
    <!-- End Services Section -->
   
    <!-- ======= About Us Section ======= -->
    <%@include file="/include/about.jsp"%>
    <!-- End About Us Section -->
  
    <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>
    
    <!-- End Contact Section -->

  </main><!-- End #main -->
	<%@include file="/include/footer.jsp"%>
	</form>
</body>
</html>