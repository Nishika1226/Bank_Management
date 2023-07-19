<!DOCTYPE html>
<html lang="en">

<head>
 <%@include file="/include/head.jsp"%>
</head>

<body>
  <%@include file="/include/header.jsp"%>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1>Better Solutions For Your Savings</h1>
          <h2>Most Visited Banking Credit and Lending Website</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="login.jsp" class="btn-get-started scrollto">Get Started</a>
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
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="row">
          <div class="col-lg-9 text-center text-lg-start">
            <h3>Call To Action</h3>
            <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" href="#">Call To Action</a>
          </div>
        </div>

      </div>
    </section><!-- End Cta Section -->

   
   
    <!-- ======= Contact Section ======= -->
    <%@include file="/include/contact.jsp"%>
    <!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  
  <%@include file="/include/footer.jsp"%>

</body>

</html>