
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/assets/images/favicon.png">
<title>Thông tin nhân viên</title>
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="resources/css/style_staff.css" rel="stylesheet">
<!-- Form -->
<link rel="stylesheet" href="resources/css/form.css">
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

<body class="fix-header card-no-border">
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
					<a class="navbar-brand" href="index-admin"> <!-- Logo icon -->
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

					<ul class="navbar-nav mr-auto mt-md-0 ">
						<!-- This is  -->
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"
							href="javascript:void(0)"><i class="ti-menu"></i></a></li>
						<li class="nav-item hidden-sm-down">
							<form class="app-search p-l-20">
								<input type="text" class="form-control"
									placeholder="Tìm kiếm..."> <a class="srh-btn"><i
									class="ti-search"></i></a>
							</form>
						</li>
					</ul>
					<!-- ============================================================== -->
					<!-- User profile and search -->
					<!-- ============================================================== -->
					<ul class="navbar-nav my-lg-0">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img
								src=".resources/assets/images/users/1.jpg" alt="user"
								class="profile-pic m-r-5" />Markarn Doe</a></li>
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
						<li class="active"><a href="index-admin"
							class="waves-effect active"><i class="fa fa-user m-r-10"
								aria-hidden="true"></i>Thông tin cá nhân</a></li>
						<li><a href="staff" class="waves-effect"><i
								class="fa fa-vcard-o m-r-10" aria-hidden="true"></i>Quản lý nhân
								viên</a></li>
						<li><a href="department" class="waves-effect"><i
								class="fa fa-group m-r-10" aria-hidden="true"></i>Quản lý phòng
								ban</a></li>
						<li><a href="achievement" class="waves-effect"><i
								class="fa fa-gift m-r-10" aria-hidden="true"></i>Thành tích và
								Kỉ luật</a></li>
						<li><a href="index" class="waves-effect"><i
								class="fa fa-home m-r-10" aria-hidden="true"></i>Trang chủ</a></li>

						<li><a href="logout" class="waves-effect"><i
								class=" fa fa-sign-out m-r-10" aria-hidden="true"></i>Đăng xuất</a>
						</li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<div class="row page-titles">
					<div class="col-md-6 col-8 align-self-center">
						<h3 class="text-themecolor m-b-0 m-t-0">Quản lý nhân viên</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
									chủ</a></li>
							<li class="breadcrumb-item active">Quản lý nhân viên</li>
						</ol>
					</div>
					<div class="col-md-6 col-4 align-self-center">
						<a href="staff" class="btn pull-right hidden-sm-down btn-success">Quản
							lý thông tin nhân viên</a>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->


				<!-- phần edit thông tin -->

				<div class="row">
					<!-- column -->
					<p style="color: red; font-weight: bold;" id="mesageerror"></p>
					<div class="col-sm-12">
						<div class="card">
							<div class="card-block">
								<h2 class="card-title">Chỉnh sửa thông tin</h2>
								<hr>
								<!-- ============================================================== -->

								<form:form action="save-staff" modelAttribute="staffsend"
									enctype="multipart/form-data" id="formsubmit" method="POST"
									class="form">
									<div class="row-1">
										<form:hidden path="IdStaff" />

										<!-------------------Họ và tên-------------------->
										<label>Họ và tên:</label> <br>
										<!--input họ tên-->
										<form:input path="Fullname" name="fullname" type="text"
											placeholder="Họ và Tên" class="form-controler" />

										<!---------------------Giới tính----------------->

										<br> <label>Giới tính: </label><br>
										<!--input giới tính-->
										<form:radiobutton path="gender" value="Nam" />
										<span style="margin-right: 40px; font-weight: 500;">Nam</span>
										<form:radiobutton path="gender" value="Nữ" />
										<span style="margin-right: 40px; font-weight: 500;">Nữ</span>
										<form:radiobutton path="gender" value="Khác" />
										<span style="font-weight: 500;">Khác</span>
										<!-------------------Ngày sinh-------------------->
										<br> <label style="padding-top: 10px">Ngày sinh:</label>
										<br>
										<!--input ngày sinh-->
										<form:input path="Birthday" name="Birthday" type="text"
											id="Birthday" class="form-controler"
											placeholder="Ngày/Tháng/Năm" />

										<!-----------------------Email------------------->

										<br> <label>Email:</label> <br>

										<!--input email--->
										<form:input path="Email" name="Email" id="Email" type="text"
											placeholder="Email" class="form-controler" />

										<!--input mật khẩu--->
										<br> <label>Mật khẩu:</label> <br> <input
											type="text" placeholder="Mật khẩu" name="Password" id="pass"
											class="form-controler" /> <br>

										<!-----------------------Lương-------------------->
										<label>Lương: </label> <br>
										<!--input lương-->
										<form:input path="Salary" type="number" id="sala"
											name="Salary" placeholder="Lương" class="form-controler" />

									</div>

									<div class="row-2">

										<!-----------------------Điện thoại------------------->
										<label>Điện thoại:</label> <br>
										<!--input điện thoại--->
										<form:input path="Phone" type="text" id="Phone" name="Phone"
											placeholder="Điện thoại" class="form-controler" />

										<!-----------------------Điểm thưởng------------------->
										<label>Điểm thưởng:</label> <br>
										<!--input cấp độ--->
										<form:input path="RewardPoint" id="RewardPoint"
											name="RewardPoint" placeholder="Điểm thưởng"
											class="form-controler" />


										<!-----------------------Điểm phạt------------------->
										<label>Điểm phạt:</label> <br>
										<!--input Điểm phạt--->
										<form:input path="PenaltyPoints" id="PenaltyPoints"
											name="PenaltyPoints" placeholder="Điểm phạt"
											class="form-controler" />


										<!-----------------------Cấp độ------------------->

										<label>Cấp độ:</label> <br>
										<!--input cấp độ--->
										<form:input path="Level" name="Level" id="Level" type="number"
											placeholder="Cấp độ" class="form-controler" />


										<!-----------------------Ghi chú------------------->
										<br> <label>Ghi chú:</label> <br>
										<!--input ghi chú--->
										<form:input path="Notes" type="text" id="Notes" name="Notes"
											placeholder="Ghi chú" class="form-controler" />
										<br>

										<!-----------------------Phòng ban------------------->
										<label>Phòng ban:</label> <br>
										<!--input phòng ban--->
										<form:select path="Department.DepartsId"
											items="${listNameDepart}" itemLabel="DepartsName"
											itemValue="DepartsId"
											style="width: 308px; height: 30px; border: 1 solid black; border-radius: 9px; font-size: 13px;" />

										<!-----------------------Ảnh------------------>


										<label>Ảnh:</label>
										<form:hidden path="Photo" id="tempPhoto" />

										<br> <input style="height: 30px; width: 250px"
											type="file" placeholder="Chọn ảnh" name="PhotoFile"
											onblur="getName()" id="photopost" class="form-controler" />
										<br>

										<!--input ghi chú--->
									</div>

									<!--  Các phím chức năng -->
									<div class="row-3">
										<button
											style="background-color: #4CAF50; border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none;; font-size: 16px; margin-top: 200px; margin-right: 30px; 200 px; border-radius: 5px; cursor: pointer;"
											type="submit" onclick=" return error()">LƯU</button>
									</div>

								</form:form>

								<div class="table-responsive"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
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
	<!-- Style switcher -->
	<!-- ============================================================== -->
	<script
		src="resources/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>



</body>
<script>
	function error() {
		var status = false;
		var name = document.getElementById("Fullname").value;
		var Email = document.getElementById("Email").value;
		/* var Birthday = document.getElementById("Birthday").value;
		var pass = document.getElementById("pass").value;
		var Phone = document.getElementById("Phone").value; */
		if (isNaN(name) && isNaN(Email)  /* && isNaN(Birthday) && isNaN(pass)
				&& isNaN(Phone) */ ) {

			status = true;
		} else {
			status = false;
			document.getElementById("mesageerror").innerHTML = "Kiểm tra đầy đủ các trường!"
		}
		return status;
	}
</script>
<script>
	function getName() {

		var fullPath = document.getElementById('photopost').value;
		if (fullPath) {
			var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath
					.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
			var filename = fullPath.substring(startIndex);
			if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
				filename = filename.substring(1);
			}
			document.getElementById('tempPhoto').value = filename;
		}
	}
</script>
</html>