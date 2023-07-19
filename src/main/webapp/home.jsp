<!DOCTYPE html>
<html lang="en">

<head>
 <%@include file="/include/head.jsp"%>
</head>

<body>
  <%@include file="/include/navbar.jsp"%>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1>Better Solutions For Your Savings</h1>
          <h2>Most Visited Banking Credit and Lending Website</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="#about" class="btn-get-started scrollto">Get Started</a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

   <main id="main">
    <!-- ======= Services Section ======= -->
    <%@include file="/include/services.jsp"%>
    <!-- End Services Section -->
   
    <!-- ======= About Us Section ======= -->
    <%@include file="/include/about.jsp"%>
    <!-- End About Us Section -->
   
    <!-- ======= Cta Section ======= -->
    <%@include file="/include/cta.jsp"%>
    <!-- End Cta Section -->

    <!-- ======= Contact Section ======= -->
    <%@include file="/include/contact.jsp"%>
    <!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  
  <%@include file="/include/footer.jsp"%>

</body>

</html>