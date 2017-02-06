

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>RitchieStreet| Home</title>
    
    <!-- Font awesome -->
    <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="<c:url value="/resources/css/jquery.smartmenus.bootstrap.css"/>" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery.simpleLens.css"/>">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slick.css"/>">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css"   href="<c:url value="/resources/css/nouislider.css"/>">
    <!-- Theme color -->
    <link id="switcher"  rel="stylesheet" href="<c:url value="/resources/css/theme-color/lite-blue-theme.css"/>">

    <!-- Main style sheet -->
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https:+//fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  

  </head>
  <body> 
  
  

 <%@ include file="header.jsp"%>

               
<%@ include file="carousel.jsp"%>
  
<%@ include file="index_promo.jsp"%>
<%@ include file="index_productlist.jsp"%>

<!-- banner section -->
  <section id="aa-banner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">        
          <div class="row">
            <div class="aa-banner-area">
            <a href="#"><img src="<c:url value="/resources/img/fashion-banner.png"/>" alt="fashion banner img"></a>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  
  
  
  <!-- Support section -->
  <section id="aa-support">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-support-area">
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-truck"></span>
                <h4>FREE SHIPPING</h4>
                <P>Delivered within 3-4 working days, one day delivery for Premium Customers</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-clock-o"></span>
                <h4>30 DAYS MONEY BACK</h4>
                <P>
If u cancel within 30 days and you're not completely satisfied. Money Back Guarantee</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-phone"></span>
                <h4>SUPPORT 24/7</h4>
                <P>
We are available to service 24/7,Our promise is to delight customers</P>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Support section -->
  <!-- Testimonial -->
  <section id="aa-testimonial">  
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-testimonial-area">
            <ul class="aa-testimonial-slider">
              <!-- single slide -->
              <li>
                <div class="aa-testimonial-single">
                <img class="aa-testimonial-img" src="img/testimonial-img-2.jpg" alt="testimonial img">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p>This site makes the customer to feel like experience a real shopping environment, I specially like it, because this site is for geeks, am a Geek</p>
                  <div class="aa-testimonial-info">
                    <p>Linus Torvalds</p>
                    <span>Founder</span>
                    <a href="#">Linux kernel</a>
                  </div>
                </div>
              </li>
              <!-- single slide -->
              <li>
                <div class="aa-testimonial-single">
                <img class="aa-testimonial-img" src="img/testimonial-img-1.jpg" alt="testimonial img">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p>Lot of improvements needed, i hope the team will work on that in future. Besides that i love this site.</p>
                  <div class="aa-testimonial-info">
                    <p>Elon Musk</p>
                    <span>CEO</span>
                    <a href="#">Tesla, SpaceX</a>
                  </div>
                </div>
              </li>
               <!-- single slide -->
              <li>
                <div class="aa-testimonial-single">
                <img class="aa-testimonial-img" src="img/testimonial-img-3.jpg" alt="testimonial img">
                  <span class="fa fa-quote-left aa-testimonial-quote"></span>
                  <p>Great works does born from scratch works, My delighted wishes to the team for developing this site and for Hilarious works which gonna done in future.  </p>
                  <div class="aa-testimonial-info">
                    <p>Steve wozniak</p>
                    <span>Co-Founder</span>
                    <a href="#">Apple.Inc</a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Testimonial -->















  
  
  <%@ include file="footer.jsp"%>

 
 
 
 
 
 
 
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="<c:url value="/resources/js/bootstrap.js"/>"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.js"/>"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.smartmenus.bootstrap.js"/>"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.simpleGallery.js"/>"></script>
  <script type="text/javascript" src="<c:url value="/resources/js/jquery.simpleLens.js"/>"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="<c:url value="/resources/js/slick.js"/>"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="<c:url value="/resources/js/nouislider.js"/>"></script>
  
  <!-- Custom js -->
  <script src="<c:url value="/resources/js/custom.js"/>"></script> 

  </body>
</html>





 