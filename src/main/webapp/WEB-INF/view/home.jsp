<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page isELIgnored="false" %>     
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Blank | Creative - Bootstrap 3 Responsive Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="resource/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="resource/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="resource/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="resource/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="resource/css/style.css" rel="stylesheet">
  <link href="resource/css/style-responsive.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->

    <header class="header dark-bg">
      <!-- <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>
 -->
      <!--logo start-->
      <a href="index.html" class="logo">RK <span class="lite">Hospital</span></a>
      <!--logo end-->

      <div class="nav search-row" id="top_menu">
        <!--  search form start -->
        <ul class="nav top-menu">
          <li>
            <form class="navbar-form">
              <input class="form-control" placeholder="Search" type="text">
              <input type="submit" value="Search" class="btn btn-primary">
            </form>
          </li>
        </ul>
        <!--  search form end -->
      </div>
      
      

       </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="">
            <a class="" href="index.html">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>RK Hospital</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="form_component.html">Admin Login</a></li>
              <li><a class="" href="form_validation.html">Doctors Login</a></li>
              <li><a class="" href="form_validation.html">Recepsnist Login</a></li>
              <li><a class="" href="form_validation.html">Lab Assistant Login</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Records</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="general.html">Doctors List</a></li>
              <li><a class="" href="@{/login}">Lab Assistant List</a></li>
              <li><a class="" href="@{/login}">Recepsnist List</a></li>
              <li><a class="" href="@{/login}">Staff List</a></li>
              <li><a class="" href="@{/login}">Patients List</a></li>
            </ul>
          </li>
         
          <li class="sub-menu ">
            <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>Profile</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="profile.html">Profile</a></li>
              <li><a class="" href="login.html"><span>Login Page</span></a></li>
              <li><a class="" href="contact.html"><span>Contact Page</span></a></li>
              <li><a class="active" href="blank.html">Blank Page</a></li>
              <li><a class="" href="404.html">404 Error</a></li>
            </ul>
          </li>

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
      <section id="main-content">
      <section class="wrapper"> 
         <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa fa-bars"></i> Patient List</h3>
            <!-- <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-bars"></i>Pages</li>
              <li><i class="fa fa-square-o"></i>Pages</li>
            </ol> -->
          </div>
        </div> 
        
        
        <div class="container">
        <button class="btn btn-success nBtn">New</button>
          <div class="card">
            <div class="card-block">
              <table class="table table-hover">
                <thead>
                 <tr>
                   <th>ID</th>
                   <th>Name</th>
                   <th>Mobile</th>
                   <th>Email</th>
                 </tr>
                </thead>
                <tbody>
                 <c:forEach var="stu" items="${slist }">
                   <tr>
                     <td>${stu.pid }</td>
                     <td>${stu.name }</td>
                     <td>${stu.mobile }</td> 
                     <td>${stu.email }</td>
                     <td><a href="view?pid=${stu.pid}" class="btn btn-primary eBtn">View</a></td>
                     <td><a href="deleteP?pid=${stu.pid}" class="btn btn-danger delBtn">Delete</a></td>
                     <td><a href="findOneP?pid=${stu.pid}" class="btn btn-primary eBtn">Edit</a></td>
                   </tr>
                 </c:forEach>
                </tbody>
              </table>
              
            </div>
          </div>
      
          <div class="myForm1">
          
           <form action="save" method="post">
           
           <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-primary text-center" id="exampleModalLabel">Create a New User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
           <div class="form-group">
            <label for="name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value=""/>
          </div>
          
           <div class="form-group">
            <label for="mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile" value=""/>
          </div>
          
           <div class="form-group">
            <label for="email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email" value=""/>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-primary" value="save">
      </div>
    </div>
  </div>
</div>
         </form> 
          
          </div>
          
          <!-- modal form starts -->
           <div class="myForm">
          
           <form action="save1" method="post">
           
           <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-primary text-center" id="exampleModalLabel">Update Or Create</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
           <div class="form-group">
            <!-- <label for="sid" class="col-form-label">ID:</label> -->
            <input type="hidden" class="form-control" id="pid" name="pid" value=""/>
           
          </div> 
          
           <div class="form-group">
            <label for="name" class="col-form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value=""/>
          </div>
          
           <div class="form-group">
            <label for="mobile" class="col-form-label">Mobile:</label>
            <input type="text" class="form-control" id="mobile" name="mobile" value=""/>
          </div>
          
           <div class="form-group">
            <label for="email" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email" name="email" value=""/>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-primary" value="save">
      </div>
    </div>
  </div>
</div>
         </form> 
          
          </div>
          <!-- modal form ends -->
       
       
       <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-danger" id="exampleModalLabel">Delete Modal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <p class="alert alert-danger">Are You Sure You Want To Delete</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="" class="btn btn-danger" id="delRef">Delete</a>
      </div>
    </div>
  </div>
</div>
       
       
        </div>
        
        
       </section>
     </section>  
    <!--main content end-->
     <div class="text-right">
      <div class="credits">
         
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div> 
  </section>
  <!-- container section end -->
  <!-- javascripts -->
  <script src="resource/js/jquery.js"></script>
  <script src="resource/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="resource/js/jquery.scrollTo.min.js"></script>
  <script src="resource/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="resource/js/scripts.js"></script>
  <script src="resource/contactform/contactform.js"></script>
  <script src="resource/js/patient.js"></script>

</body>

</html>
