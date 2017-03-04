

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>RitchieStreet| About Us</title>
    
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

<!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="<c:url value="/resources/img/aboutus.png"/>" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>AboutUs</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home </a></li>                   
          <li class="active">${page_name}</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->
  
  <!-- Blog Archive -->
  <section id="aa-blog-archive">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-blog-archive-area">
            <div class="row">
              <div class="col-md-9">
                <!-- Blog details -->
                <div class="aa-blog-content aa-blog-details">
                  <article class="aa-blog-content-single">                        
                    <h2><a href="#">About us</a></h2>
                     
                     <p>This site is developed using java programming language. Fulfilling all neccessary requirements of an shopping website. All codes in this project are loosly coupled and developed using spring framework. </p>
                    <p>For an user, can browse all products without having an account. To buy products user should login, If thy not have an account thy can register as an new user. And then can proceed to buy products. </p>
                    <blockquote>
                     Buying and selling of goods and services, or the transmitting of funds or data, over an electronic network, primarily the internet. These business transactions occur either as business-to-business, business-to-consumer, consumer-to-consumer or consumer-to-business.</blockquote>
                    <p>The future of ecommerce is uncertain, but some things remain constant – delivery times will improve, customer service will get increasingly better, and product selection will become ever greater. But how might the future of buying online actually look from the customer perspective, and what should you be implementing in your own business over time to stay ahead of the curve?</p>
                    <ul>
                      <li>Nearly all retail growth in the US at present is driven by ecommerce, and this looks set to continue in the years ahead as more people spend more money online.</li>
                      <li>Drones will in the future allow companies to deliver packages much more efficiently and quickly, with delivery times of just 60 or even 30 minutes from order entirely plausible.</li>
                      <li>The next step for ecommerce will be the application of AI systems, running evolutionary algorithms designed to find the absolute optimum.</li>
                      <li>Voluptate sunt tempora culpa et veritatis ex quo non tenetur similique blanditiis! Debitis, assumenda, provident.</li>
                      <li>Eligendi sunt ratione praesentium, tempore esse, iure ut dolor consequuntur eum ducimus commodi sequi beatae.</li>
                    </ul>
                    
                 </div>
              </div>

              <!-- blog sidebar -->
              <div class="col-md-3">
                <aside class="aa-blog-sidebar">
                  <div class="aa-sidebar-widget">
                    <h3>Category</h3>
                    <ul class="aa-catg-nav">
                   <c:forEach var="categoryList" items="${categoryList}">
                    
              <li><a href="categorypage?categoryId=${categoryList.categoryId}">${categoryList.categoryName} </a></li>
    
                </c:forEach>
      </ul></div>
                     <div class="aa-sidebar-widget">
                    <h3>Developers Team</h3>
                    <div class="aa-recently-views">
                      <ul>
<!--                         <li> -->
<%--                           <a class="aa-cartbox-img" href="#"><img src="<c:url value="/resources/img/developer1.jpg"/>" alt="img"></a> --%>
<!--                           <div class="aa-cartbox-info"> -->
<!--                             <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4> -->
<!--                             <p>March 26th 2016</p> -->
<!--                           </div>                     -->
<!--                         </li> -->
                        <li>
                          <a class="aa-cartbox-img" href="#"><img src="<c:url value="/resources/img/developer2.jpg"/>" alt="img"></a>
                          <div class="aa-cartbox-info">
                            <h4><a href="#">Sri Muthu Rajesh</a></h4>
                            <p>Devops</p>
                          </div>                    
                        </li>
<!--                          <li> -->
<%--                           <a class="aa-cartbox-img" href="#"><img src="<c:url value="/resources/img/developer3.jpg"/>" alt="img"></a> --%>
<!--                           <div class="aa-cartbox-info"> -->
<!--                             <h4><a href="#">Lorem ipsum dolor.</a></h4> -->
<!--                             <p>March 26th 2016</p> -->
<!--                           </div>                     -->
<!--                         </li>                                       -->
                      </ul>
                    </div>                            
                  </div>
                </aside>
              </div>
            </div>           
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Blog Archive -->


  
  
  
  
  
  
  
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





 