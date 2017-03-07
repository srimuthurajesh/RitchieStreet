
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Daily Shop | Home</title>
    
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
 
 <!-- Start Promo section -->
  <section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
              <!-- promo left -->
              <div class="col-md-5 no-padding"> 
               <a href="categorypage?categoryId=C3">                
                <div class="aa-promo-left">
                  <div class="aa-promo-banner">                    
                    <img src="<c:url value="/resources/img/promo-banner-1.jpg"/>" alt="img">                    
                    <div class="aa-prom-content">
<!--                      <span>Embedded Systems</span> -->
<!--                       <h4><a href="#">Embedded Systems</a></h4>                       -->
                    </div>
                  </div>
                </div>
              </div></a>
              <!-- promo right -->
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                 <a href="categorypage?categoryId=C2">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="<c:url value="/resources/img/promo-banner-3.jpg"/>" alt="img">                      
                      <div class="aa-prom-content">
<!--                         <a href="categorypage?categoryId=C2">  <span>Robotics</span></a> -->
<%--                         <h4><a href="<c:url value='editproduct/${category}' />">MicroControllers</a></h4>                         --%>
                      </div>
                    </div>
                  </div></a>
                  <a href="categorypage?categoryId=C6">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="<c:url value="/resources/img/promo-banner-2.jpg"/>" alt="img">                      
                      <div class="aa-prom-content">
<!--                         <span>Sale Off</span> -->
<!--                         <a href="categorypage?categoryId=C6">  <span>Applications</span></a>                       -->
                      </div>
                    </div>
                  </div></a>
                  <a href="categorypage?categoryId=C5">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="<c:url value="/resources/img/promo-banner-4.jpg"/>" alt="img">                      
                      <div class="aa-prom-content">
<!--                         <span>New Arrivals</span> -->
<!--                         <a  href="categorypage?categoryId=C5"><span>Tools & Supplies</span></a>                      -->
                      </div>
                    </div>
                  </div></a>
                  <a href="categorypage?categoryId=C7">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="<c:url value="/resources/img/promo-banner-5.jpg"/>" alt="img">                      
                      <div class="aa-prom-content">
<!--                         <span>Wires & Controllers</span> -->
<!--        <h4>                 <a  href="categorypage?categoryId=C7"></a>          </h4>              -->
                      </div>
                    </div>
                  </div></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Promo section -->
  
  
  
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





