
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="icon" type="image/png"  href="<c:url value="/resources/img/logo1.png"/>" sizes="16x16">
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>RitchieStreet| ContactUs</title>
    
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
  
  

 <%@ include file="header.jsp"%><br>
 <div class="container"> <div class="page-header"><h2>Contact Us</h2></div>
                   
  <div class="col-md-5 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <address>
                    <h3>Head Office</h3>
                      <p> 26, Rajesh Corp<br>No.25-78 sector<br>Rajesh Industrial Estate<br>Rorchester,<br>NY, USA</p>
                      <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                      <p><span class="fa fa-envelope"></span>contact@rajeshcorp.com</p>
                    </address>
                  
                  </div>
                </div>
              </div>                  
  <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <address>
                    <h3>India</h3>
                      <p> 31, City tech park, <br> Apj tech park<br> Chennai<br>TN, India</p>
                      <p><span class="fa fa-phone"></span>+91 237-57-43</p>
                      <p><span class="fa fa-envelope"></span>contact@rajeshcorp.in</p>
                    </address>
                  
                  </div>
                </div>
              </div>                  
  <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <address>
                    <h3>London</h3>
                      <p> 33, st peters Road<br> Benquesting<br>Central London<br>ENG</p>
                      <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                      <p><span class="fa fa-envelope"></span>contact@rajeshcorp.uk</p>
                    </address>
                  
                  </div>
                </div>
              </div>                  
  <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <address>
                    <h3>Switzer Land</h3>
                      <p> Vulkanstrasse 106 
<br>CH-8010 Zurich 
<br>Switzerland</p>
                      <p><span class="fa fa-phone"></span>+41-58-333-4455 </p>
                      <p><span class="fa fa-envelope"></span>contact@rajeshcorp.ch</p>
                    </address>
                  
                  </div>
                </div>
              </div>
              
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <address>
                    <h3>Japn</h3>
                      <p> Shiodome City Center<br> 
1-5-2 Higashi-Shimbashi <br>
Minato-ku, Tokyo, Japan </p>
                      <p><span class="fa fa-phone"></span>+81-3-6252-2220  </p>
                      <p><span class="fa fa-envelope"></span>contact@rajeshcorp.jp</p>
                    </address>
                  
                  </div>
                </div>
              </div> 
 </div>
 <!--map-start-->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17608.145306973736!2d77.24837156637875!3d8.973657846887022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b06810e54a796f5%3A0x7daa844824a5d448!2sShenkottai%2C+Tamil+Nadu+627809!5e1!3m2!1sen!2sin!4v1488632584827" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	<!--map-end-->
 
 
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





 
