<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>
</head>
<body>
<%session.invalidate(); %>

 <%@include file="/include/header.jsp"%>
   <section id="hero" class="d-flex align-items-center" >
   <div class="container" style=" padding-left: 50px;padding-top:0px;text-align: center;">
   <p style="color:#eef4f7; padding-right: 0px;font-size: 30px">You have been Logged Out!!</p> <br>
   <div class="text-center" style="text-align: center;display: inline-grid;">
   <a href="login.jsp" style="color:#eef4f7;"><b><u>Back To Login</u></b></a>
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
  
    <!-- ======= Contact Section ======= -->
   <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

    <!-- End Contact Section -->

  </main><!-- End #main -->
  
	<%@include file="/include/footer.jsp"%>
	
</body>
</html>