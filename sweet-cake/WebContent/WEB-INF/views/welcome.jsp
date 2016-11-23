<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
<head>
  <!-- META DATA -->
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="http://www.danebsoft.com">

	<title><spring:message code="appname"/></title>
  
	<!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css" />' />
	
	<!-- Owl Carousel Assets -->
    <link href='<c:url value="/resources/owl-carousel/owl.carousel.css" />' rel="stylesheet">
    <link href='<c:url value="/resources/owl-carousel/owl.theme.css" />' rel="stylesheet">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/style.css" />'/>
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href='<c:url value="/resources/font-awesome-4.4.0/css/font-awesome.min.css"/> ' />
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
	
</head>

 <body>

	<!-- /////////////////////////////////////////Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">SweetCake</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href='<c:url value="/" />'>Home</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="single.html">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="menu.html">Menu</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="archive.html">Blog</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="contact.html">Contact</a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Language
                        <span class="caret"></span>
                      </a>
      				  <ul class="dropdown-menu" role="menu">
        			    <li><a href="?lang=en">English</a></li>
        			    <li><a href="?lang=sr">Serbish</a></li>
      				  </ul>
      				</li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
	<!-- Navigation -->
	<header class="container">
		<p class="text-center">Monday - Friday <strong>11AM to 2PM</strong>, Saturday - Sunday <strong>9Am to 2PM</strong></p>
		<!-- CAROUSEL -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="4000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
		 
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src='<c:url value="/resources/images/banner1.jpg"/>'/>
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<h1>Great service and <br/>atmosphere</h1></br>
						<p>Start Bootstrap can help you build better websites using the Bootstrap CSS framework! <br/>Just download your template and start going, no strings attached!</p></br>
						<a href="" class="btn btn-primary btn-xl page-scroll">Find Out More</a>
					</div><!-- /header-text -->
				</div>
				<div class="item">
					<img src='<c:url value="/resources/images/banner2.jpg"/>' />
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<h1>Great service and <br/>atmosphere</h1></br>
						<p>Start Bootstrap can help you build better websites using the Bootstrap CSS framework! <br/>Just download your template and start going, no strings attached!</p></br>
						<a href="" class="btn btn-primary btn-xl page-scroll">Find Out More</a>
					</div><!-- /header-text -->
				</div>
				<div class="item">
					<img src='<c:url value="/resources/images/banner3.jpg" />' />
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<h1>Great service and <br/>atmosphere</h1></br>
						<p>Start Bootstrap can help you build better websites using the Bootstrap CSS framework! <br/>Just download your template and start going, no strings attached!</p></br>
						<a href="" class="btn btn-primary btn-xl page-scroll">Find Out More</a>
					</div><!-- /header-text -->
				</div>
			</div>
		 
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div> <!-- Carousel -->
	</header>

	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content">
	
		<!-- ////////////Content Box 01 -->
		<section class="box-content box-1">
			<div class="container">
				<div class="heading">
					<h2>
						<span class="hr"><spring:message code="dashboard.welcome"/></span>
					</h2>
					<div class="intro">Nulla hendrerit risus auctor, sodales lacus in, facilisis enim. Curabitur iaculis lacus leo,<br/> ut consequat tellus posuere vel.</div>
				</div>
				<div class="row">
					<p>Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin, sagittis sem nibh id elit. Duis sed odio sit.amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.</p>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 02 -->
		<section class="box-content box-2 box-style-1" id="services">
			<div class="container">
				<div class="heading">
					<h2>
						<span class="hr">Menu</span>
					</h2>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="item-container">
							<a href="#"  id="pop">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img id="imageresource" src='<c:url value="/resources//images/menu-1.jpg" />' />
							</a>
						</div>
						<div class="item-container">
							<a href="#">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img src='<c:url value="/resources/images/menu-5.jpg" />' />
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="item-container">
							<a href="#">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img src='<c:url value="/resources/images/menu-2.jpg" />' />
							</a>
						</div>
						<div class="item-container">
							<a href="#">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img src='<c:url value="/resources/images/menu-6.jpg" />' />
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="item-container">
							<a href="#">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img src='<c:url value="/resources/images/menu-3.jpg" />' />
							</a>
						</div>
						<div class="item-container">
							<a href="#">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img src='<c:url value="/resources/images/menu-7.jpg" />' />
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="item-container">
							<a href="#">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img src='<c:url value="/resources/images/menu-4.jpg" />' />
							</a>
						</div>
						<div class="item-container">
							<a href="#">
								<div class="item-caption">
									<div class="item-caption-inner">
										<div class="item-caption-inner1">
											<h3>$45</h3>
											<span>Only</span>
										</div>
									</div>
								</div>
								<img src='<c:url value="/resources/images/menu-8.jpg" />' />
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 3 -->
		<section class="box-content box-3 box-style-3">
			<div class="container">
				<div class="heading">
					<h2>
						<span class="hr" style="color: #fff;">Clients Say</span>
					</h2>
				</div>
				<div class="row">
					<div id="owl-brand" class="owl-carousel">
						<div class="item text-center">
							<img src='<c:url value="/resources/images/partner1.png"/>' class="img-circle"  />
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley.</p>
							<span>Catherine Grace - America</span>
						</div>
						<div class="item text-center">
							<img src='<c:url value="/resources/images/partner2.png" />' class="img-circle" />
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley.</p>
							<span>Catherine Grace - America</span>
						</div>
						<div class="item text-center">
							<img src='<c:url value="/resources/images/partner3.png"/>' class="img-circle" />
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley.</p>
							<span>Catherine Grace - America</span>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 04 -->
		<section class="box-content box-4 box-style-1" id="services">
			<div class="container">
				<div class="heading">
					<h2>
						<span class="hr">Infomation</span>
					</h2>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<div class="service">
							<a href="single.html"><img src='<c:url value="/resources/images/icon1.png" />' title="icon-name"></a>
							<h3>Sucess Story</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
							<a class="btn btn-2 btn-sm" href="single.html">Read More</a>
							
						</div>
			 		</div>
			 		<div class="col-sm-4">
						<div class="service">
							<a href="contact.html"><img src='<c:url value="/resources/images/icon3.png" />' title="icon-name"></a>
							<h3>Map</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
							<a class="btn btn-2 btn-sm" href="contact.html">Read More</a>
						</div>
			 		</div>
			 		<div class="col-sm-4">
						<div class="service">
							<a href="menu.html"><img src='<c:url value="/resources/images/icon2.png" />' title="icon-name"></a>
							<h3>Food Menu</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
							<a class="btn btn-2 btn-sm" href="menu.html">Read More</a>
						</div>
			 		</div>	
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 05 -->
		<section class="box-content box-5 box-style-2" id="contact">
			<div class="container">
				<div class="heading">
					<h2>
						<span class="hr" style="color: #fff;">Booking</span>
					</h2>
					<div class="intro">Nulla hendrerit risus auctor, sodales lacus in, facilisis enim. Curabitur iaculis lacus leo,<br/> ut consequat tellus posuere vel.</div>
				</div>
				<div class="row">
					<div>
						<form name="form1" method="post" action="">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
									<input type="text" class="form-control input-lg" name="name" id="name" placeholder="Enter name" required="required" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="email" class="form-control input-lg" name="email" id="email" placeholder="Enter email" required="required" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control input-lg" name="subject" id="subject" placeholder="Subject" required="required" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<input type="date" class="form-control input-lg" name="date" id="date" placeholder="Date" required="required" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<input type="time" class="form-control input-lg" name="time" id="time" placeholder="Time" required="required" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<textarea name="message" id="message" class="form-control" rows="4" cols="25" required="required"
										placeholder="Message"></textarea>
									</div>						
									<center><button type="submit" class="btn btn-skin" name="btnBooking" id="btnBbooking">
								Book Now</button></center>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	
  <div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
      <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Image preview</h4>
      </div>
      <div class="modal-body">
        <img src="" id="imagepreview" style="width: 400px; height: 264px;" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
    </div>
  </div>
	
	<jsp:include page="../views/fragments/footer.jsp" />
	
	<!-- jQuery -->
	<script type="text/javascript" src='<c:url value="/resources/js/jquery-2.1.1.js"/>'></script>
	<script type="text/javascript" src='<c:url value="/resources/js/bootstrap.min.js" />'></script>
	
	<!-- Custom Theme JavaScript -->
	<script src='<c:url value="/resources/js/agency.js" />'></script>

	<!-- Plugin JavaScript -->
	<script src='<c:url value="/resources/js/jquery.easing.min.js"/>'></script>
	<script src='<c:url value="/resources/js/classie.js"/>'></script>
	<script src='<c:url value="/resources/js/cbpAnimatedHeader.js"/>'></script>
	
	<!-- carousel -->
	<script src='<c:url value="/resources/owl-carousel/owl.carousel.js"/>'></script>
    <script>
    $(document).ready(function() {
      $("#owl-brand").owlCarousel({
        autoPlay: 3000,
        items : 1,
		itemsDesktop : [1199,1],
        itemsDesktopSmall : [979,2],
		navigation: false,
      });
      $("#pop").on("click", function() {
    	   $('#imagepreview').attr('src', $('#imageresource').attr('src')); // here asign the image to the modal when the user click the enlarge link
    	   $('#imagemodal').modal('show'); // imagemodal is the id attribute assigned to the bootstrap modal, then i use the show function
    	});
    });
    </script>
	
	<!-- Google Map -->
	<script>
		$('.maps').click(function () {
		$('.maps iframe').css("pointer-events", "auto");
	});

	$( ".maps" ).mouseleave(function() {
	  $('.maps iframe').css("pointer-events", "none"); 
	});
	</script>
  
</body>
</html>