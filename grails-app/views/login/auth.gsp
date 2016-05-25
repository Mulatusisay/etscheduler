%{--
<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' media='screen'>
	#login {
		margin: 15px 0px;
		padding: 0px;
		text-align: center;
	}

	#login .inner {
		width: 340px;
		padding-bottom: 6px;
		margin: 60px auto;
		text-align: left;
		border: 1px solid #aab;
		background-color: #f0f0fa;
		-moz-box-shadow: 2px 2px 2px #eee;
		-webkit-box-shadow: 2px 2px 2px #eee;
		-khtml-box-shadow: 2px 2px 2px #eee;
		box-shadow: 2px 2px 2px #eee;
	}

	#login .inner .fheader {
		padding: 18px 26px 14px 26px;
		background-color: #f7f7ff;
		margin: 0px 0 14px 0;
		color: #2e3741;
		font-size: 18px;
		font-weight: bold;
	}

	#login .inner .cssform p {
		clear: left;
		margin: 0;
		padding: 4px 0 3px 0;
		padding-left: 105px;
		margin-bottom: 20px;
		height: 1%;
	}

	#login .inner .cssform input[type='text'] {
		width: 120px;
	}

	#login .inner .cssform label {
		font-weight: bold;
		float: left;
		text-align: right;
		margin-left: -105px;
		width: 110px;
		padding-top: 3px;
		padding-right: 10px;
	}

	#login #remember_me_holder {
		padding-left: 120px;
	}

	#login #submit {
		margin-left: 15px;
	}

	#login #remember_me_holder label {
		float: none;
		margin-left: 0;
		text-align: left;
		width: 200px
	}

	#login .inner .login_message {
		padding: 6px 25px 20px 25px;
		color: #c33;
	}

	#login .inner .text_ {
		width: 120px;
	}

	#login .inner .chk {
		height: 12px;
	}
	</style>
</head>

<body>
<div id='login'>
	<div class='inner'>
		<div class='fheader'><g:message code="springSecurity.login.header"/></div>

		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>

		<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
			<p>
				<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
				<input type='text' class='text_' name='j_username' id='username'/>
			</p>

			<p>
				<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
				<input type='password' class='text_' name='j_password' id='password'/>
			</p>

			<p id="remember_me_holder">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</p>

			<p>
				<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
			</p>
		</form>
	</div>
</div>
<script type='text/javascript'>
(function() {
	document.forms['loginForm'].elements['j_username'].focus();
})();
</script>
</body>
</html>
--}%


<!DOCTYPE html>
<html>
<head>

    <!-- /.website title -->
    <meta charset="UTF-8">
    <title><g:message code="springSecurity.login.title"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <g:set var="entityName" value="${message(code: 'login.label', default: 'LogIn')}" />

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
                <div class="col-md-7">

                    <!-- /.logo -->
                    %{--<div class="logo wow fadeInDown"> <a href="${createLink(uri: '/')}"><img src="${request.contextPath}/starter/images/logo.png" alt="logo"></a></div>--}%

                    <div class="logo wow fadeInDown"> </br> </div>

                    <!-- /.main title -->
                    <h1 class="wow fadeInLeft">
                    Training Tracking System
                    </h1>
                    <!-- /.header paragraph -->
                    <div class="landing-text wow fadeInUp">
                    <p>This is Ethiopian Ramp Quality Assurance and Safety scheduling system designed for Training Tracking, Staff Scheduling to ADD Hub airport operation. It is flexible to assist planning activity, access to ACE tools and operational tips. </br>Create paperless environment & upgrade your work style!</p>
                    </div>

                    <!-- /.header button -->
                    <div class="head-btn wow fadeInLeft">
                        <a href="${createLink(uri: '/')}" class="btn-primary">RQAS</a>
                        <a href="../comment/create" class="btn-default">Comments</a>
                    </div>
                </div>

            <!-- /.signup form -->

                <g:if test='${flash.message}'>
                    <div class='login_message'>${flash.message}</div>
                </g:if>

                <div class="col-md-5">

                    <div class="signup-header wow fadeInUp">
                        <h3 class="form-title text-center">Log In</h3>
                        <form class="form-header" action='${postUrl}' method='POST' id='loginForm'   autocomplete='off'>
                            <input type="hidden" name="u" value="503bdae81fde8612ff4944435">
                            <input type="hidden" name="id" value="bfdba52708">
                            <div class="form-group">
                                %{--<input class="form-control input-lg" name="MERGE1" id="name" type="text" placeholder=" User name" required>--}%

                                %{--<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>--}%
                                <input type='text' class="form-control input-lg" name='j_username' id='username' placeholder=" User name" required/>

                            </div>
                            <div class="form-group">
                                %{--<input class="form-control input-lg" name="MERGE0" id="password" type="password" placeholder="password" required>--}%

                                %{--<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>--}%
                                <input type='password' class="form-control input-lg" name='j_password' id='password'placeholder=" Password" required/>

                            </div>
                            <div class="form-group last">
                                <input type="submit" class="btn  btn-block btn-lg" value='${message(code: "springSecurity.login.button")}'/>

                            </div>
                            <p id="remember_me_holder">
                                <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                                <em><a href="../comment/create"> Forgot Password?</a></em>
                            </p>

                        </form>
                        %{--<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                            <p>
                                <label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                                <input type='text' class='text_' name='j_username' id='username'/>
                            </p>

                            <p>
                                <label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                                <input type='password' class='text_' name='j_password' id='password'/>
                            </p>

                            <p id="remember_me_holder">
                                <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                            </p>

                            <p>
                                <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
                            </p>
                        </form>
--}%
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
                    <li><a href="#">Portal</a></li>
                    <li><a href="#package">ACE</a></li>
                    <li><a href="../comment/create">Contact</a></li>
                    <li><a href="../etDirectory">Phone Directory</a></li>
                    <li><a href="../dashboard">Dashboard</a></li>
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
<script type='text/javascript'>
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
</script>
</body>
</html>