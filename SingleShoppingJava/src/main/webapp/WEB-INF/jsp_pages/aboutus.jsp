

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
                     
                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates voluptatum accusamus dolorum ipsam adipisci laudantium laborum ipsa excepturi soluta, dolore similique, velit id, rerum repudiandae enim modi! Quo, debitis, in.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, laudantium error nisi, fuga odio sint dignissimos similique maiores nihil amet, impedit atque saepe distinctio, in repudiandae quia. Hic numquam laborum, aliquam eligendi quo inventore aperiam quae error commodi voluptatum dolorum tempore, atque, ratione molestiae, nostrum perferendis. Similique voluptatum error quaerat?</p>
                    <blockquote>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum facere tempora rerum qui illum, repellat adipisci ad suscipit, quis accusamus commodi nemo deserunt optio nobis fugit cumque, delectus repellendus quo.
                    </blockquote>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor omnis ipsam, nisi voluptate reprehenderit consectetur, illum possimus asperiores. Sed ad natus saepe, distinctio veniam? Error natus, dolore rem beatae, dolorum, aliquid sapiente ipsa voluptatum impedit vel maiores nobis totam! Ad dicta obcaecati dolore natus deleniti qui, hic animi, nobis cumque fuga non sapiente neque voluptatum nisi perspiciatis, molestiae vero distinctio officia, laboriosam. Veritatis assumenda nam est fuga rem asperiores repellat veniam magnam, molestias iusto quas facilis, et eaque. Est magni voluptas quibusdam saepe quis laudantium atque maxime itaque optio ipsam qui voluptates beatae, perspiciatis fugiat tempora maiores, odio, sed non!</p>
                    <ul>
                      <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum deserunt earum qui nobis veritatis! Reprehenderit.</li>
                      <li>Rerum nesciunt laboriosam, excepturi, officiis, delectus cum facere aperiam aliquam numquam, modi amet asperiores repudiandae!</li>
                      <li>Dicta recusandae eveniet ducimus rerum, maxime provident suscipit cupiditate natus at necessitatibus, consequuntur iste magnam.</li>
                      <li>Voluptate sunt tempora culpa et veritatis ex quo non tenetur similique blanditiis! Debitis, assumenda, provident.</li>
                      <li>Eligendi sunt ratione praesentium, tempore esse, iure ut dolor consequuntur eum ducimus commodi sequi beatae.</li>
                    </ul>
                    <h1>Heading 1</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias nihil nobis libero magni fuga ratione ipsam ipsa laboriosam quod, reprehenderit, error iusto, delectus eius. Iste.</p>
                    <h2>Heading 2</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias nihil nobis libero magni fuga ratione ipsam ipsa laboriosam quod, reprehenderit, error iusto, delectus eius. Iste.</p>
                    <h3>Heading 3</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est asperiores voluptatem officia, nulla, nihil tempore illum esse sunt in quos!</p>
                    <h4>Heading 4</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus odit nostrum magnam, quas quos id!</p>
                    
                    <div id="respond">
                    <h3 class="reply-title">Leave a Comment</h3>
                    <form id="commentform">
                      <p class="comment-notes">
                        Your email address will not be published. Required fields are marked <span class="required">*</span>
                      </p>
                      <p class="comment-form-author">
                        <label for="author">Name <span class="required">*</span></label>
                        <input type="text" name="author" value="" size="30" required="required">
                      </p>
                      <p class="comment-form-email">
                        <label for="email">Email <span class="required">*</span></label>
                        <input type="email" name="email" value="" aria-required="true" required="required">
                      </p>
                      <p class="comment-form-url">
                        <label for="url">Website</label>
                        <input type="url" name="url" value="">
                      </p>
                      <p class="comment-form-comment">
                        <label for="comment">Comment</label>
                        <textarea name="comment" cols="45" rows="8" aria-required="true" required="required"></textarea>
                      </p>
                      <p class="form-submit">
                        <input type="submit" name="submit" class="aa-browse-btn" value=" Comment">
                      </p>        
                    </form>
                  </div>
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





 