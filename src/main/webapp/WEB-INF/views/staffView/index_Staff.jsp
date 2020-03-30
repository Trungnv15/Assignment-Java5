<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/assets/images/favicon.png">
<title>Staff Information</title>
<!-- Bootstrap Core CSS -->
<link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- fontawesome 5 -->
<script src="https://kit.fontawesome.com/1fe2f07b7f.js"
	crossorigin="anonymous"></script>
<!-- Custom CSS -->
<!-- icon-fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- icon-fontawesome -->
<link href="resources/css/style_staff.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="resources/css/colors/blue.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<%@ page isELIgnored="false"%>
</head>

<body class="fix-header fix-sidebar card-no-border">
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="2" stroke-miterlimit="10" /> </svg>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar">
			<nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
				<!-- ============================================================== -->
				<!-- Logo -->
				<!-- ============================================================== -->
				<div class="navbar-header">
					<a class="navbar-brand" href="infomation-staff"> <!-- Logo icon -->
						<b> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <!-- <img src="../assets/images/logo-icon.png" alt="homepage" class="dark-logo" /> -->
					</b> <!--End Logo icon --> <!-- Logo text --> <span> <!-- dark Logo text -->
							<b> <span>EMPTY SYSTEM</span>
						</b> <img style="width: 20%; padding-bottom: 10px"
							src="resources/assets/images/download.png" alt="homepage"
							class="dark-logo" />
					</span>
					</a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav mr-auto mt-md-0 ">
						<!-- This is  -->
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"
							href="javascript:void(0)"><i class="ti-menu"></i></a></li>
						<li class="nav-item hidden-sm-down">
							<form class="app-search p-l-20">
								<input type="text" class="form-control" placeholder="Tìm kiếm">
								<a class="srh-btn"><i class="ti-search"></i></a>
							</form>
						</li>
					</ul>
					<!-- ============================================================== -->
					<div style="padding-top: 20px; font-size: large; color: red; font-weight: bold; ">
						<a
							href="${pageContext.request.contextPath}/infomation-staff?lang=en">English</a>
						&nbsp;&nbsp; <a
							href="${pageContext.request.contextPath}/infomation-staff?lang=vi">
							Vietnamese</a>
					</div>
					<!-- User profile and search -->
					<!-- ============================================================== -->
					<ul class="navbar-nav my-lg-0">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img
								src="resources/imageTemp2/${infomationStaff.photo}" alt="user"
								class="profile-pic m-r-5" />${infomationStaff.fullname}</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li class="active"><a href="index_Staff.html"
							class="waves-effect active"><i class="fa fa-user m-r-10"
								aria-hidden="true"></i> <spring:message
									code="label.personalinformation" /></a></li>

						<li><a href="logout-staff" class="waves-effect"><i
								class=" fa fa-sign-out m-r-10" aria-hidden="true"></i><spring:message
									code="label.logout" /></a>
						</li>
						
						<li><a href="index.html" class="waves-effecttt"><i
								class="fa fa-home m-r-10" aria-hidden="true"></i> <spring:message
									code="label.homepage" /></a></li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>

		<div class="page-wrapper">
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<div class="row page-titles">
					<div class="col-md-6 col-8 align-self-center">
						<h3 class="text-themecolor m-b-0 m-t-0">
							<spring:message code="label.personalinformation" />
						</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)"><spring:message
										code="label.homepage" /></a></li>
							<li class="breadcrumb-item active"><spring:message
									code="label.personalinformation" /></li>
						</ol>
					</div>
					<div class="col-md-6 col-4 align-self-center"></div>
				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<!-- Row -->
				<div class="row">
					<!-- Column -->
					<div class="col-lg-4 col-xlg-3 col-md-5">
						<div class="card">
							<div class="card-block">
								<center class="m-t-30">
									<img src="resources/imageTemp2/${infomationStaff.photo}"
										class="img-circle" width="150" />
									<h4 class="card-title m-t-10">${infomationStaff.fullname}</h4>
									<h6 class="card-subtitle">Empty System</h6>
									<div class="row text-center justify-content-md-center">
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="fas fa-level-up-alt"></i> <font class="font-medium">${infomationStaff.level}</font></a>
										</div>
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="far fa-smile"></i> <font class="font-medium">${infomationStaff.rewardPoint}</font></a>
										</div>
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="far fa-sad-tear"></i> <font class="font-medium">${infomationStaff.penaltyPoints}</font></a>
										</div>
										<br> <br>
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="fas fa-gift"></i> <font class="font-medium">${infomationStaff.rewardPoint-infomationStaff.penaltyPoints}</font></a>
										</div>
									</div>
								</center>
							</div>
						</div>
						<div style="font-weight: 550;">
							<spring:message code="label.note" />
						</div>
						<div style="font-weight: 90px; font-size: 16px;">
							<span style="padding-left: 7px;"><i
								class="fas fa-level-up-alt"></i> <spring:message
									code="label.level" /></span>
						</div>
						<div style="font-weight: 90px; font-size: 16px;">
							<span style="padding-left: 7px;"><i class="far fa-smile"></i>
								<spring:message code="label.totalrewardpoints" /></span>
						</div>
						<div style="font-weight: 90px; font-size: 16px;">
							<span style="padding-left: 7px;"><i
								class="far fa-sad-tear"></i> <spring:message
									code="label.totalpenaltypoints" /></span>
						</div>
						<div style="font-weight: 90px; font-size: 16px;">
							<span style="padding-left: 7px;"><i class="fas fa-gift"></i>
								<spring:message code="label.calculation" /></span>
						</div>
					</div>
					<!-- Column -->
					<!-- Column -->
					<div class="col-lg-8 col-xlg-9 col-md-7">
						<div class="card">
							<div class="card-block">
								<form class="form-horizontal form-material">
									<!-- Mã nhân viên -->
									<div class="form-group">
										<label class="col-md-12"><spring:message
												code="label.idstaff" /></label>
										<div class="col-md-12">
											<input type="text" readonly
												value="${infomationStaff.idStaff}"
												class="form-control form-control-line">
										</div>
									</div>

									<!-- Họ và tên -->
									<div class="form-group">
										<label class="col-md-12"> <spring:message
												code="label.fullname" /></label>
										<div class="col-md-12">
											<input type="text" readonly
												value="${infomationStaff.fullname}"
												class="form-control form-control-line">
										</div>
									</div>

									<!-- email -->
									<div class="form-group">
										<label for="example-email" class="col-md-12"><spring:message
												code="label.email" /></label>
										<div class="col-md-12">
											<input type="email" readonly value="${infomationStaff.email}"
												class="form-control form-control-line" name="example-email"
												id="example-email">
										</div>
									</div>

									<!-- giới tính -->
									<div class="form-group">
										<label class="col-sm-12"><spring:message
												code="label.gender" /></label>
										<div class="col-sm-12">
											<input type="text" readonly value="${infomationStaff.gender}"
												class="form-control form-control-line">
										</div>
									</div>

									<!-- ngày sinh -->
									<div class="form-group">
										<label class="col-md-12"><spring:message
												code="label.birthday" /></label>
										<div class="col-md-12">
											<input type="text" readonly
												value="${infomationStaff.birthday}"
												class="form-control form-control-line">
										</div>
									</div>
									<!-- Lương -->
									<div class="form-group">
										<label class="col-md-12"><spring:message
												code="label.salary" /></label>
										<div class="col-md-12">
											<input type="text" readonly value="${infomationStaff.salary}"
												class="form-control form-control-line">
										</div>
									</div>
									<!-- Số điện thoại -->
									<div class="form-group">
										<label class="col-md-12"><spring:message
												code="label.numberphone" /></label>
										<div class="col-md-12">
											<input type="text" readonly value="${infomationStaff.phone}"
												class="form-control form-control-line">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- Column -->
				</div>
				<!-- Row -->
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer text-center"> © 2017 Monster Admin by
				wrappixel.com </footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<script src="resources/assets/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="resources/assets/plugins/bootstrap/js/tether.min.js"></script>
	<script src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="resources/js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="resources/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="resources/js/sidebarmenu.js"></script>
	<!--stickey kit -->
	<script
		src="resources/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<!--Custom JavaScript -->
	<script src="resources/js/custom.min.js"></script>
	<!-- ============================================================== -->
	<!-- This page plugins -->
	<!-- ============================================================== -->
	<!-- Flot Charts JavaScript -->
	<script src="resources/assets/plugins/flot/jquery.flot.js"></script>
	<script
		src="resources/assets/plugins/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
	<script src="resources/js/flot-data.js"></script>
	<!-- ============================================================== -->
	<!-- Style switcher -->
	<!-- ============================================================== -->
	<script
		src="resources/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>