
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

							<g:hasErrors bean="${commentInstance}">
								<ul class="errors" role="alert">
									<g:eachError bean="${commentInstance}" var="error">
										<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
									</g:eachError>
								</ul>
							</g:hasErrors>
							%{--<g:form url="[resource:commentInstance, action:'save']" >--}%
					<g:form  url="[resource:commentInstance, action:'save']" id="contact-form" class="form-horizontal"  name="createMessageForm" >%{--onSubmit="alert('Thank you for your feedback!')"--}%
								<fieldset class="form">
									<g:render template="form"/>
								</fieldset>
								%{--<fieldset class="buttons">--}%
									%{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
								%{--</fieldset>--}%
						<div class="form-group">
							<g:submitButton name="create"  class="btn btn-success wow fadeInUp" value="Submit"  />
						</div>

						</g:form>
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
				<a class="navbar-brand site-name" href="${createLink(uri: '/')}"><img src="${request.contextPath}/starter/images/logo2.png" alt="logo"></a>
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
					<li><a class="wow fadeInUp" href="https://instagram.com/" data-wow-delay="0.6s"><i class="fa fa-instagram"></i></a></li>
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
%{--
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-comment" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${commentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${commentInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:commentInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
--}%
