<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
	isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">

<title>Login</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel="stylesheet" href="style1.css">

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/carousel.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-select.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="style.css">


<!-- COLORS -->
<link rel="stylesheet" type="text/css" href="css/custom.css">
<link rel="stylesheet" type="text/css" href="custom.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script language="javascript">
	function validate() {
		if (document.getElementById("username").value == "") {
			alert("Please enter USERNAME/EMAIL");
			document.getElementById("username").focus();
			return false;
		}
		if (document.getElementById("password").value == "") {
			alert("Please enter PASSWORD");
			document.getElementById("password").focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div id="loader">
		<div class="loader-container">
			<img src="images/load.gif" alt="" class="loader-site spinner">
		</div>
	</div>
	<section style="background-color:#febf10; height:3px;"></section>
	<div id="wrapper">
		<jsp:include page="./mainMenu.jsp"></jsp:include>

		<section class="bbg">
		<div class="container">
			<br> <br>
			<br>

			<div class="col-lg-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" style="text-align: center;">

					<font style='color: blue; font-weight: 600; font-size: medium;'>${message1}</font>
					<font style='color: red; font-weight: 600; font-size: medium;'>${message2}</font>
					<font style='color: red; font-weight: 600; font-size: medium;'>${verifyerror}</font>
					<font style='color: blue; font-weight: 600; font-size: medium;'>${loginEmailVerified}</font>
					<font style='color: blue; font-weight: 600; font-size: medium;'>${emailverifiedsuccess}</font>


				</div>
				<div class="col-md-3"></div>
			</div>
			<br> <br>
			<div class="row main">
				<div class="main-login main-center">
					<h2
						style="font-weight: bolder; color: #171717; text-align: center;">LOGIN</h2>
					<form method="post" action="./userLogin"
						onsubmit="return validate()">

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										class="color" type="text" required class="form-control"
										name="username" id="username"
										placeholder="Enter your Username" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
										class="color" type="password" required class="form-control"
										name="password" id="password"
										placeholder="Enter your Password" />
								</div>
							</div>
						</div>
						<div class="form-group ">
							<td><input type="submit" id="login" value="LOGIN"
								class="btn btn-primary btn-lg btn-block login-button"
								style="text-align: -webkit-center; border: 1px solid #6ab42f; padding: 10px 0px;"></td>
							<br></br>
							<div align="right">
								<a href="./fgpwd.jsp" class="forgot"
									style="color: red; font-weight: 600;">Forgot password</a> <br></br>
								Don't have account in Rythu Mitra? <a href="./register"
									style="color: red; font-weight: 600;">Sign Up</a>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		</section>


		<!--===================== footer section ===============-->	
	  <div class="clearfix"> </div>
		<section class="copyright">
		<div class="container">
		<div class="row">
		<div class="col-md-6 text-left">
		<p class="rx_fooyter">Copyright © 2018 Designed And Maintained by <a href="#" title="">kosurisoft.com</a></p>
		</div>
		<div class="col-md-6 text-right">
		<ul class="list-inline">
		<li><a href="#" class="rx_fooyter">Terms of Usage</a></li>
		<li><a href="#" class="rx_fooyter">Privacy Policy</a></li>
		</ul>
		</div>
		</div>
		</div>
		</section>
		<!--========== end footer section ===========-->
	</div>
	<!-- end wrapper -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/custom.js"></script>

</body>

</html>