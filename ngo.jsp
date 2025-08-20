<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Educator-Suggested NGOs</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

        <!-- Bootsrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Font awesome -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Template main Css -->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!-- Modernizr -->
        <script src="assets/js/modernizr-2.6.2.min.js"></script>


    </head>
    <body>
    <!-- NAVBAR
    ================================================== -->

    <header class="main-header">
        
    
        <nav class="navbar navbar-static-top">

            <div class="navbar-top">

              <div class="container">
                  <div class="row">

                    <div class="col-sm-6 col-xs-12">

                        <ul class="list-unstyled list-inline header-contact">
                            <li> <i class="fa fa-phone"></i> <a href="tel:">+91-9854621189</a> </li>
                             <li> <i class="fa fa-envelope"></i> <a href="mailto:contact@sadaka.org">contact@educator.org</a> </li>
                       </ul> <!-- /.header-contact  -->
                      
                    </div>

                    <div class="col-sm-6 col-xs-12 text-right">

                        <ul class="list-unstyled list-inline header-social">

                            <li> <a href="https://www.facebook.com" target="_blank"> <i class="fa fa-facebook"></i> </a> </li>
                            <li> <a href="https://www.twitter.com" target="_blank"> <i class="fa fa-twitter"></i>  </a> </li>
                            <li> <a href="https://www.youtube.com" target="_blank"> <i class="fa fa-youtube"></i>  </a> </li>
                       </ul> <!-- /.header-social  -->
                      
                    </div>


                  </div>
              </div>

            </div>

            <div class="navbar-main">
              
              <div class="container">

                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                  </button>
                  
                  <a class="navbar-brand" href="home.html"><p> EDUCATOR </p></a>
                  
                </div>

                <div id="navbar" class="navbar-collapse collapse pull-right">

                  <ul class="nav navbar-nav">

                    <li><a href="home.html">HOME</a></li>
                    <li><a href="about.html">ABOUT</a></li>
                    <li><a class="is-active" href="ngo.jsp">SUGGESTED NGOs</a></li>
                    <li><a href="gallery.html">GALLERY</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="masterhome.html">SIGN OUT</a></li>

                  </ul>

                </div> <!-- /#navbar -->

              </div> <!-- /.container -->
              
            </div> <!-- /.navbar-main -->


        </nav> 

    </header> <!-- /. main-header -->


	<div class="page-heading text-center">

		<div class="container zoomIn animated">
			
			<h1 class="page-title">SUGGESTED NGOs<span class="title-under"></span></h1>
			<p class="page-description">
				<i><b>We are glad to have you here!</b></i>
			</p>
		</div>
	</div>
 
 
 <% 
    Class.forName("com.mysql.jdbc.Driver"); 
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/educator?useSSL=false","root","bugs");
    Statement st= con.createStatement(); 
    ResultSet rs;
    String selq = "select * from ngo";
    rs=st.executeQuery(selq);
    while(rs.next()){
    
%>

 <div class="w3-row-padding+">
 <div class="w3-third w3-container w3-margin-bottom">
 <center><img src="download.png" alt="Norway" style="width:60%" class="w3-hover-opacity"></center>
      <div class="w3-container w3-white">
        <p><b><center><%= rs.getString(2) %></center></b></p>
        
<div class="contact-items">

						<ul class="list-unstyled contact-items-list">
							<li class="contact-item"> <span class="contact-icon"> <i class="fa fa-map-marker"></i></span><%= rs.getString(3) %></li>
							<li class="contact-item"> <span class="contact-icon"> <i class="fa fa-phone"></i></span> <%= rs.getString(5) %>/<%= rs.getString(6) %></li>
							<li class="contact-item"> <span class="contact-icon"> <i class="fa fa-envelope"></i></span> <%= rs.getString(4) %></li>
							<li class="contact-item"> <span class="contact-icon"> <i class="fa fa-globe"></i></span><%= rs.getString(7) %></li>
						</ul>
					</div>
      </div>
    </div>
    <%}
    con.close(); %>
</div>


        <!-- jQuery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')</script>

        <!-- Bootsrap javascript file -->
        <script src="assets/js/bootstrap.min.js"></script>


        <!-- Template main javascript -->
        <script src="assets/js/main.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='//www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X');ga('send','pageview');
        </script>
    </body>
</html>
