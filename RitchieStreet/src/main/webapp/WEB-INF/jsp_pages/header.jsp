
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
   <!-- wpf loader Two -->
    <div id="wpf-loader-two">          
      <div class="wpf-loader-two-inner">
        <span>Loading</span>
      </div>
    </div> 
    <!-- / wpf loader Two -->       
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  <header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
                <!-- / cellphone -->
              </div>
              <!-- / header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
                
                
                <c:if test="${ Loggedin != true }">
                  <li><a href="" data-toggle="modal" data-target="#login-modal"><span class="glyphicon glyphicon-user"></span> Login</a></li>
				  <li><a href="register"><span class=""></span> Sign-up</a></li></c:if>
				  
				<c:if test="${ Loggedin == true }">
                  <li><a href="userpage?username=${User }" ><span class="glyphicon glyphicon-user"></span> ${User}'s account</a></li>
				  <li><a href="logout"><span class=""></span> Log Out</a></li>
				  </c:if>
				  
				  <c:if test="${ isAdmin != true  }">
                  <li class="hidden-xs"><a href="contactus"><span class="glyphicon glyphicon-phone-alt"></span> Help Center</a></li>
                  <li class="hidden-xs"><a href="aboutus">About us</a></li>
                </c:if>
                
                      </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container-fluid col-md-12" style=" padding-left: 3%;
    padding-right: 3%;">
        <div class="row">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
		 <div class="aa-logo">
                <!-- Text based logo -->
                <a href="indexpage">
                  <span class="fa fa-wrench"></span>
                   <p style="font-family:Comic Sans MS">Ritchie<strong>Street</strong> <span>A Geeky Shopping Experience</span></p>
                </a> 
                <!-- img based logo -->
                 <!--<a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
              </div>
              <!-- / logo  -->
                <c:if test="${ isAdmin != true  }">
             
                <!-- cart box -->
			    <div class="hidden-xs">
              <div class="aa-cartbox">
                <a class="aa-cart-link"  href="cartpage?username=${User }" >
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">Cart</span>
                  <c:choose><c:when test="${  empty cartList}">
                  <span class="aa-cart-notify">  &nbsp;</span>
                </c:when></c:choose>
                <c:choose><c:when test="${ not empty cartList}">  
                  <span class="aa-cart-notify"> ${cartsize}</span>
                </c:when></c:choose>
                </a>
                  <c:choose><c:when test="${ not empty cartList}">
                <div class="aa-cartbox-summary">
                  <ul>
                    <c:forEach var="cartList" items="${cartList}">
                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="<c:url value="resources/product/${cartList.productModel.productId}.png"/>" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#">${cartList.productModel.productName}</a></h4>
                        <p><i class="fa fa-inr" ></i> ${cartList.productModel.productPrice } /-</p>
                      </div>
                     </li>
                    </c:forEach>
                      </ul>
                    
                  <a class="aa-cartbox-checkout aa-primary-btn" href="checkout?username=${User}">Checkout</a>
                  
                  <a class="aa-cartbox-checkout aa-primary-btn" href="cartpage?username=${User}">Cart</a>
               </div></c:when>
               
               </c:choose>
                 </div></div>
              <!-- / cart box -->
              </c:if>
              
               <c:if test="${ isAdmin != true  }">
                 
             <a href="search?tag=hotdeals"> <img src="<c:url value="resources/img/specialoffer.png"/>" style="height:60px;width:100px"></a>
<%-- <img src="<c:url value="resources/img/2.png"/>" style="height:120px;width:120px"> --%>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong> <a href="https://play.google.com/store/apps?hl=en" target="_blank"> Download our App</a></strong>
              </c:if>
              <c:if test="${ isAdmin != true  }">
               
              <!-- search box -->
			                 <div class="aa-search-box">
                <form action="search">
                  <input type="text" name="tag" id="" placeholder="Search here Products, Brands , names etc " ng-model="searchText"/>  
				  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>
              <!-- / search box -->           
                </c:if>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>
  <!-- / header section -->
     <!-- menu -->
  <section id="menu">
    <div class="container-fluid" style="padding-left:130px;">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <ul class="nav navbar-nav"><c:if test="${ isAdmin != true  }">
                 <c:forEach var="categoryList" items="${categoryList}">
                    
              <li><a  href="categorypage?categoryId=${categoryList.categoryId}">${categoryList.categoryName} </a></li>
                </c:forEach>
                </c:if>
                
                <c:if test="${ isAdmin == true  }">
                <li><a href="category">Manage Category</a></li>
              <li><a href="supplier">Manage Supplier</a></li>
              <li><a href="product">Manage Product</a></li>
              
                
                </c:if>
                  
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>       
    </div>
  </section>
  <!-- / menu -->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-show="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="loginresult" method="post">
            <label for="">Username <span>*</span></label>
            <input type="text" placeholder="Enter your Username" name="username">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Enter Your Password" name="password">
<button class="aa-browse-btn" type="submit">Login</button>
<!--             <button class="aa-browse-btn" type="submit">Login</button> -->
            <label for="rememberme" class="rememberme"><br> </label>
<!--             <p class="aa-lost-password"><a href="#">Lost your password?</a></p> -->
            <div class="aa-register-now">
              Don't have an account?<a href="register">Register now!</a>
            </div>
          </form>
        
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>    
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
<script src="<c:url value="/resources/js/angular.min.js"/>"></script> 
 
  </body>
</html>





