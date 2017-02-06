
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="icon" type="image/png"  href="<c:url value="/resources/img/close-icon.png"/>" sizes="16x16">
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
                  <li><a href="" data-toggle="modal" data-target="#login-modal"><span class="glyphicon glyphicon-user"></span> ${User}'s account</a></li>
				  <li><a href="logout"><span class=""></span> Log Out</a></li>
				  </c:if>
				  
				  <c:if test="${ isAdmin != true  }">
                  <li class="hidden-xs"><a href="#"><span class="glyphicon glyphicon-phone"></span> Help Center</a></li>
                  <li class="hidden-xs"><a href="#">Be a Seller</a></li>
                  <li class="hidden-xs"><a href="#">Advertise</a></li>
                </c:if>
                
                      </ul>
              </div>
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
                <a href="index">
                  <span class="fa fa-wrench"></span>
                  <p>Ritchie<strong>Street</strong> <span>A Geeky Shopping Experience</span></p>
                </a> 
                <!-- img based logo -->
                 <!--<a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
              </div>
              <!-- / logo  -->
               <!-- cart box -->
			    <div class="hidden-xs">
              <div class="aa-cartbox">
                <a class="aa-cart-link"  href="" data-toggle="modal" data-target="#login-modal">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">Cart</span>
                  <span class="aa-cart-notify">0</span>
                </a>
                 </div></div>
              <!-- / cart box -->
              
              
              <img src="<c:url value="resources/img/specialoffer.png"/>" style="height:60px;width:90px">
              
              <!-- search box -->
			                 <div class="aa-search-box">
                <form action="">
                  <input type="text" name="" id="" placeholder="Search here Products, Brands , names etc "/>  
				  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div>
              <!-- / search box -->             
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
                    
              <li><a href="categorypage?categoryId=${categoryList.categoryId}">${categoryList.categoryName} </a></li>
    
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
  
  
    <c:if test="${ isAdmin == true  }">
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
    <img src="<c:url value="/resources/img/admin.jpg"/>" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Admin Page</h2>
        <ol class="breadcrumb">
          <li><a href="index.html">Home / </a></li>                   
          <li class="active">${page_name}</li>
        </ol>
      </div>
     </div>
   </div>
  </section></c:if>
  <!-- / catg header banner section -->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="loginresult" method="post">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Enter your Username" name="username">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Enter Your Password" name="password">
<button class="aa-browse-btn" type="submit">Login</button>
<!--             <button class="aa-browse-btn" type="submit">Login</button> -->
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
            <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="account.html">Register now!</a>
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

  </body>
</html>





