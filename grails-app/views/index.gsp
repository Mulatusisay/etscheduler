
%{--<%@ page import="staffschedule.index" or OPS.ADMIN %>
<%@ page contentType="text/html;charset=UTF-8" %>--}%
<!DOCTYPE html>
<html>
<head>

	<!-- /.website title -->
	<meta charset="UTF-8">
	<title>ET-Quality</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<!-- CSS Files -->
	<link href="${request.contextPath}/starter/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="${request.contextPath}/starter/css/font-awesome.min.css" rel="stylesheet">
	<link href="${request.contextPath}/starter/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
	<link href="${request.contextPath}/starter/css/animate.css" rel="stylesheet" media="screen">
	<link href="${request.contextPath}/starter/css/owl.theme.css" rel="stylesheet">
	<link href="${request.contextPath}/starter/css/owl.carousel.css" rel="stylesheet">
	<!-- Colors -->
	<!--<link href="css/css-index.css" rel="stylesheet" media="screen">-->
	<link href="${request.contextPath}/starter/css/css-index-green.css" rel="stylesheet" media="screen">
	<!-- <link href="css/css-index-purple.css" rel="stylesheet" media="screen"> -->
	<!-- <link href="css/css-index-red.css" rel="stylesheet" media="screen"> -->
	<!-- <link href="css/css-index-orange.css" rel="stylesheet" media="screen"> -->
	<!-- <link href="css/css-index-yellow.css" rel="stylesheet" media="screen"> -->
	<!-- Google Fonts -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic" />

</head>

<body data-spy="scroll" data-target="#navbar-scroll">

<!-- /.preloader -->
<div id="preloader"></div>
<div id="top"></div>

<!-- /.parallax full screen background image -->
<div class="fullscreen landing parallax" style="background-image:url('${request.contextPath}/starter/images/bg.jpg');" data-img-width="2000" data-img-height="1333" data-diff="100">

	<div class="overlay">
		<div class="container">
			<div class="row">
				%{--<div class="col-md-5">

					<!-- /.logo -->
					<div class="logo wow fadeInDown"> <a href=""><img src="${request.contextPath}/starter/images/logo.png" alt="logo"></a></div>
					<!-- /.main title -->
					<h1 class="wow fadeInLeft">
						ET Quality Portal
					</h1>
					<!-- /.header paragraph -->
					<div class="landing-text wow fadeInUp">
						<p>This is a portal page for Training Tracking System and Staff Scheduling to ADD airport operation. Designed to increase efficiency and access to operational tools and tips. ET-Quality is flexible to suit operational activities, centralized training record system, and create paperless environment . Try it now and upgrade your work style!</p>
					</div>
					<!-- /.header button -->
					<div class="head-btn wow fadeInLeft">
						<a href="#feature" class="btn-primary">Features</a>
						<a href="login" class="btn-default">Dashboard</a>
					</div>
				</div>

				<!-- /.signup form -->
				<div class="col-md-7">

					<div class="signup-header wow fadeInUp">
						<div class="video-header">
							<div class="video-embed wow fadeIn" data-wow-duration="1s">

								<!-- video embed from YOUTUBE -->
								<iframe width="560" height="315" src="//www.youtube.com/embed/LHdVkPrdRYg?rel=0" frameborder="0" allowfullscreen></iframe>

								<!-- video embed from VIMEO -->
								<!-- <iframe src="//player.vimeo.com/video/103435603?title=0&amp;byline=0&amp;portrait=0&amp;color=8aba56" width="500" height="281" frameborder="0" allowfullscreen></iframe> -->

							</div>
						</div>

					</div>

				</div>--}%
				%{--optional layout, with out the video--}%
				<div class="col-md-10 col-md-offset-1 text-center">

					<!-- /.logo -->
				<div class="logo wow fadeInDown"> <a href=""><img src="${request.contextPath}/starter/images/logo.png" alt="logo"></a></div>

					<!-- /.main title -->
				<h1 class="wow fadeInLeft">
					ET Quality Portal
				</h1>
				<!-- /.header paragraph -->
				<div class="landing-text wow fadeInUp">
					<p>This is a portal page for Training Tracking System and Staff Scheduling to ADD airport operation. Designed to increase efficiency and access to operational tools and tips. ET-Quality is flexible to suit operational activities, centralized training record system, and create paperless environment . Try it now and upgrade your work style!</p>
				</div>
				<!-- /.header button -->
				<div class="head-btn wow fadeInLeft">
					<a href="#feature" class="btn-primary">Features</a>
					<a href="dashboard" class="btn-default">Dashboard</a>
				</div>

				</div>
			</div>
		</div>
	</div>
</div>

<!-- NAVIGATION -->
<div id="menu">
	<nav class="navbar-wrapper navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-backyard">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand site-name" href="#top"><img src="${request.contextPath}/starter/images/logo2.png" alt="logo"></a>
			</div>

			<div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="#intro">About</a></li>
					<li><a href="#feature">Features</a></li>
					<li><a href="#download">Ideas</a></li>
					<li><a href="#package">ACE</a></li>
					<li><a href="qcpc/create">QCPC</a></li>
					<li><a href="etDirectory">Phone Directory</a></li>
					<li><a href="dashboard">Dashboard</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>

<!-- /.intro section -->
<div id="intro">
	<div class="container">
		<div class="row">

			<!-- /.intro image -->
			<div class="col-md-6 intro-pic wow slideInLeft">
				<img src="${request.contextPath}/starter/images/intro-image.jpg" alt="image" class="img-responsive">
			</div>

			<!-- /.intro content -->
			<div class="col-md-6 wow slideInRight">
				<h2>Quality Assurance & Safety </h2>
				<p>Quality customer Service and Good marketing makes the company look smart. <a href="#">Great Marketing, Quality Service</a> and providing <a href="#"> Safe Service</a> makes the customer feel smart; choosing the right carrier, <a href="#">ET</a>. Never doubt a team of thoughtful, committed people can change the world. Indeed, it is the only thing that ever has. The best way to predict the future is to create it.
				</p>

				<div class="btn-section"><a href="#feature" class="btn-default">Read More</a></div>

			</div>
		</div>
	</div>
</div>

<!-- /.feature section -->
<div id="feature">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 col-sm-12 text-center feature-title">

				<!-- /.feature title -->
				<h2>Standardization and Team Collaboration</h2>
				<p>Increase customer loyalty by maintaining standard customer service,nurturing your team effort and mutual communication.</p>
			</div>
		</div>
		<div class="row row-feat">
			<div class="col-md-4 text-center">

				<!-- /.feature image -->
				<div class="feature-img">
					<img src="${request.contextPath}/starter/images/feature-image.jpg" alt="image" class="img-responsive wow fadeInLeft">
				</div>
			</div>

			<div class="col-md-8">

				<!-- /.feature 1 -->
				<div class="col-sm-6 feat-list">
					<i class="pe-7s-notebook pe-5x pe-va wow fadeInUp"></i>
					<div class="inner">
						<h4>Phone Directory</h4>
						<p>Its not only just using technology to automate processes, think about using technology to enhance human interaction</p>
					</div>
				</div>

				<!-- /.feature 2 -->
				<div class="col-sm-6 feat-list">
					<i class="pe-7s-cash pe-5x pe-va wow fadeInUp" data-wow-delay="0.2s"></i>
					<div class="inner">
						<h4>Cost Saving</h4>
						<p>Never doubt a small group of thoughtful, committed people can change the world. Indeed, it is the only thing that ever has.</p>
					</div>
				</div>

				<!-- /.feature 3 -->
				<div class="col-sm-6 feat-list">
					<i class="pe-7s-cart pe-5x pe-va wow fadeInUp" data-wow-delay="0.4s"></i>
					<div class="inner">
						<h4>Baggage Claim Handling</h4>
						<p>Good customer service builds relationships. Relationships are built on trust. Trust drives revenue.</p>
					</div>
				</div>

				<!-- /.feature 4 -->
				<div class="col-sm-6 feat-list">
					<i class="pe-7s-users pe-5x pe-va wow fadeInUp" data-wow-delay="0.6s"></i>
					<div class="inner">
						<h4>Training and Schedule</h4>
						<p>Updating oneself through training and self assessment is the best way to coop up the dynamic environment.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- /.feature 2 section -->
<div id="feature-2">
	<div class="container">
		<div class="row">

			<!-- /.feature content -->
			<div class="col-md-6 wow fadeInLeft">
				<h2>Setting up your office</h2>
				<p>Clean and organized office makes every one comfortable to their job. <span class="highlight">Great motivation</span> and <span class="highlight"> Productivity </span>comes from a health working environment. The best way to have that environment is to create it and standardize it.
				</p>

				<div class="btn-section"><a href="#download" class="btn-default">Read More</a></div>

			</div>

			<!-- /.feature image -->
			<div class="col-md-6 feature-2-pic wow fadeInRight">
				<img src="${request.contextPath}/starter/images/feature2-image.jpg" alt="macbook" class="img-responsive">
			</div>
		</div>

	</div>
</div>


<!-- /.download section -->
<div id="download">
	<div class="action fullscreen parallax" style="background-image:url('${request.contextPath}/starter/images/bg.jpg');" data-img-width="2000" data-img-height="1333" data-diff="100">
		<div class="overlay">
			<div class="container">
				<div class="col-md-8 col-md-offset-2 col-sm-12 text-center">

					<!-- /.download title -->


					<h2 class="wow fadeInRight">You think you have Ideas?</br> Cost saving? </br>Recreate your ideas and gain more success</h2>

					<p class="download-text wow fadeInLeft"> Giving high value for customer satisfaction and increasing over all productivity. Cost saving and Income Generating ideas are highly appreciated and it is rewarding. Forward your thoughts and join with our team.</p>

					<!-- /.download button -->
					<div class="download-cta wow fadeInLeft">
						<a href="ideas/create" class="btn-secondary">GET STARTED</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- /.pricing section -->
<div id="package">
	<div class="container">
		<div class="text-center">

			<!-- /.pricing title -->
			<h2 class="wow fadeInLeft">ACE TOOLS</h2>
			<div class="title-line wow fadeInRight"></div>
		</div>
		<div class="row package-option">

			<!-- /.package 1 -->
			<div class="col-sm-3">
				<div class="price-box wow fadeInUp">
					<div class="price-heading text-center">

						<!-- /.package icon -->
						%{--<i class="pe-7s-joy pe-5x"></i>--}%

						<!-- /.package name -->
						<h3>TEAM</h3>
					</div>


					%{--<!-- /.price --><div class="price-group text-center">--}%
						%{--<span class="dollar">Q</span>--}%
						%{--<span class="price">1</span>--}%
						%{--<span class="time">/st</span>--}%
					%{--</div>--}%

					<!-- /.package features -->
					<ul class="price-feature text-center">
						<li><strong>CHECK</strong> LISTS</li>
						<li><strong><a class="btn" href="#">Baggage Srv</a></strong> </li>
						<li><strong><a class="btn" href="#">CLC</a></strong> </li>
						<li><strong><a class="btn" href="#">Passenger Srv</a></strong></li>
						<li><strong><a class="btn" href="#">Ramp Srv</a></strong></li>
					</ul>

					<!-- /.package button -->
					<div class="price-footer text-center">
						<a class="btn btn-price" href="#">Read More</a>
					</div>
				</div>
			</div>

			<!-- /.package 2 -->
			<div class="col-sm-3">
				<div class="price-box wow fadeInUp" data-wow-delay="0.2s">
					<div class="price-heading text-center">

						<!-- /.package icon -->

						%{--<i class="pe-7s-science pe-5x"></i>--}%
						<!-- /.package name -->
						<h3>Standard</h3>
					</div>

					%{--<!-- /.price -->
					<div class="price-group text-center">
						<span class="dollar">B</span>
						<span class="price">2</span>
						<span class="time">/nd</span>
					</div>--}%

					<!-- /.package features -->
					<ul class="price-feature text-center">
						<li><strong>Process</strong>Management </li>
						<li><strong>TPM</strong></li>
						<li><strong>5s+1</strong></li>
						<li><strong>Training</strong> </li>
						<li><strike> Compromise </strike>Safety</li>
					</ul>

					<!-- /.package button -->
					<div class="price-footer text-center">
						<a class="btn btn-price" href="#">Try It Now</a>
					</div>
				</div>
			</div>

			<!-- /.package 3 -->
			<div class="col-sm-3">
				<div class="price-box wow fadeInUp" data-wow-delay="0.4s">
					<div class="price-heading text-center">

						%{--<!-- /.package icon -->
						<i class="pe-7s-radio pe-5x"></i>
--}%
						<!-- /.package name -->
						<h3>Advance</h3>
					</div>

					%{--<!-- /.price -->
					<div class="price-group text-center">
						<span class="dollar">S</span>
						<span class="price">3</span>
						<span class="time">/rd</span>
					</div>--}%

					<!-- /.package features -->
					<ul class="price-feature text-center">
						<li><strong>Market FeeedBack</strong>Analysis </li>
						<li><strong>QCPC</strong> </li>
						<li><strong>Controle</strong>Tower</li>
						<li><strong></strong>Safety </li>
						<li> Reward</li>
					</ul>

					<!-- /.package button -->
					<div class="price-footer text-center">
						<a class="btn btn-price" href="#">Read More</a>
					</div>
				</div>
			</div>

			<!-- /.package 4 -->
			<div class="col-sm-3">
				<div class="price-box wow fadeInUp" data-wow-delay="0.6s">
					<div class="price-heading text-center">

						%{--<!-- /.package icon -->
						<i class="pe-7s-tools pe-5x"></i>
--}%
						<!-- /.package name -->
						<h3>Change</h3>
					</div>

					%{--<!-- /.price -->
					<div class="price-group text-center">
						<span class="dollar">G</span>
						<span class="price">4</span>
						<span class="time">/th</span>
					</div>--}%

					<!-- /.package features -->
					<ul class="price-feature text-center">
						<li><strong>Root Cause </strong> Cor. Action </li>
						<li><strong>Mistake</strong> Proofing</li>
						<li><strong>Leading</strong> </li>
						<li><strong>Qualifications </strong></li>
						<li>Rewards</li>
					</ul>

					<!-- /.package button -->
					<div class="price-footer text-center">
						<a class="btn btn-price" href="#">READ MORE</a>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<!-- /.client section -->
<div id="client">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<img alt="client" src="${request.contextPath}/starter/images/company.jpg" class="wow fadeInUp">
				<img alt="client" src="${request.contextPath}/starter/images/company.jpg" class="wow fadeInUp" data-wow-delay="0.2s">
				<img alt="client" src="${request.contextPath}/starter/images/company.jpg" class="wow fadeInUp" data-wow-delay="0.4s">
				<img alt="client" src="${request.contextPath}/starter/images/company.jpg" class="wow fadeInUp" data-wow-delay="0.6s">
			</div>
		</div>
	</div>
</div>

<!-- /.testimonial section -->
<div id="testi">
	<div class="container">
		<div class="text-center">
			<h2 class="wow fadeInLeft">TESTIMONIALS</h2>
			<div class="title-line wow fadeInRight"></div>
		</div>
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div id="owl-testi" class="owl-carousel owl-theme wow fadeInUp">

					<!-- /.testimonial 1 -->
					<div class="testi-item">
						<div class="client-pic text-center">

							<!-- /.client photo -->
							<img src="${request.contextPath}/starter/images/client.jpg" alt="client">
						</div>
						<div class="box">

							<!-- /.testimonial content -->
							<p class="message text-center">"We are very happy and satisfied with your customer service. Our business is efficient and expanded world wide. It has able to create a vast destination and hubs within very short period of time. We would highly recommend Ethiopian to our business associates and anyone."</p>
						</div>
						<div class="client-info text-center">

							<!-- /.client name -->
							John, <span class="company">Joe company</span>
						</div>
					</div>

					<!-- /.testimonial 2 -->
					<div class="testi-item">
						<div class="client-pic text-center">

							<!-- /.client photo -->
							<img src="${request.contextPath}/starter/images/client.jpg" alt="client">
						</div>
						<div class="box">

							<!-- /.testimonial content -->
							<p class="message text-center">"Everything looks great... Thanks for the quick baggage delivery and short transit time . We were lucky to find you guys and will definitely be using your services in the near future."</p>
						</div>
						<div class="client-info text-center">

							<!-- /.client name -->
							Gabby, <span class="company">West Africa</span>
						</div>
					</div>

					<!-- /.testimonial 3 -->
					<div class="testi-item">
						<div class="client-pic text-center">

							<!-- /.client photo -->
							<img src="${request.contextPath}/starter/images/client.jpg" alt="client">
						</div>
						<div class="box">

							<!-- /.testimonial content -->
							<p class="message text-center">"Overall, the reports were very clear and helpful to understand our effort so thank you all for your dedication and hard work to make this happen. We are currently working with our team to standardize the operation and to keep such suggestions by providing a quality service."</p>
						</div>
						<div class="client-info text-center">

							<!-- /.client name -->
							Manager, <span class="company">Quality</span>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>

<!-- /.contact section -->
<div id="contact">
	<div class="contact fullscreen parallax" style="background-image:url('${request.contextPath}/starter/images/bg.jpg');" data-img-width="2000" data-img-height="1334" data-diff="100">
		<div class="overlay">
			<div class="container">
				<div class="row contact-row">

					<!-- /.address and contact -->
					<div class="col-sm-5 contact-left wow fadeInUp">
						<h2><span class="highlight">Get</span> in touch</h2>
						<ul class="ul-address">
							<li><i class="pe-7s-map-marker"></i>Bole International Airport</br>
								ADD Hub Quality Assurance & Safety Team
							</li>
							<li><i class="pe-7s-phone"></i>+251+115174671</br>
								+251-115174672
							</li>
							<li><i class="pe-7s-mail"></i><a href="mailto:mulatusisay@gmail.com">ADD QA&S@ethiopianairlines.com</a></li>
							<li><i class="pe-7s-look"></i><a href="#">Airport Operation</a></li>
						</ul>

					</div>

					<!-- /.contact form -->
					<div class="col-sm-7 contact-right">
					   <div class="head-btn wow fadeInLeft">
						    <a href="comment/create" class="btn-primary">Contact</a>
						    <a href="#" class="btn-default">Subscribe</a>
					   </div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- /.footer -->
<footer id="footer">
	<div class="container">
		<div class="col-sm-4 col-sm-offset-4">
			<!-- /.social links -->
			<div class="social text-center">
				<ul>
					<li><a class="wow fadeInUp" href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
					<li><a class="wow fadeInUp" href="https://www.facebook.com/" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
					<li><a class="wow fadeInUp" href="https://plus.google.com/" data-wow-delay="0.4s"><i class="fa fa-google-plus"></i></a></li>
					<li><a class="wow fadeInUp" href="https://linkedin.com/" data-wow-delay="0.6s"><i class="fa fa-instagram"></i></a></li>
				</ul>
			</div>
			<div class="text-center wow fadeInUp" style="font-size: 14px;">Copyright <a href="http://www.ethiopianairlines.com">Ethiopian Airlines</a>2016</div>
			<a href="#" class="scrollToTop"><i class="pe-7s-up-arrow pe-va"></i></a>
		</div>
	</div>
</footer>

<!-- /.javascript files -->
<script src="${request.contextPath}/starter/js/jquery.js"></script>
<script src="${request.contextPath}/starter/js/bootstrap.min.js"></script>
<script src="${request.contextPath}/starter/js/custom.js"></script>
<script src="${request.contextPath}/starter/js/jquery.sticky.js"></script>
<script src="${request.contextPath}/starter/js/wow.min.js"></script>
<script src="${request.contextPath}/starter/js/owl.carousel.min.js"></script>
<script>
	new WOW().init();
</script>
</body>
</html>