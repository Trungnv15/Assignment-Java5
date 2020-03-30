<%@ page pageEncoding="utf-8"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Thông tin nhân viên</title>
<!-- Bootstrap Core CSS -->
<link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="resources/css/style_staff.css" rel="stylesheet">
<!-- You can change the theme colors from here -->
<link href="resources/css/colors/blue.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js"></script>
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
								src="resources/assets/images/users/1.jpg" alt="user"
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
						<li><a href="staff"
							class="waves-effect"><i class="fa fa-vcard-o m-r-10"
								aria-hidden="true"></i>Quản lý nhân viên</a></li>
						<li><a href="department" class="waves-effect"><i
								class="fa fa-group m-r-10" aria-hidden="true"></i>Quản lý phòng
								ban</a></li>
						<li><a href="achievement" class="waves-effect"><i
								class="fa fa-gift m-r-10" aria-hidden="true"></i>Thành tích và Kỉ luật</a></li>
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
						<h3 class="text-themecolor m-b-0 m-t-0">Điểm thưởng</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
									chủ</a></li>
							<li class="breadcrumb-item active">Điểm thưởng</li>
						</ol>
					</div>
					<!-- <div class="col-md-6 col-4 align-self-center">
                        <a href="update_Staff.html" class="btn pull-right hidden-sm-down btn-success"> Cập nhật thông
                            tin</a>
                    </div> -->
				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-sm-12">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">Danh sách nhân viên</h4>
								<!-- <h6 class="card-subtitle">Add class <code>.table</code></h6> -->
								<h6 style="color: red" >${message}</h6>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>#</th>
												<th>Thao tác</th>
												<th>Chỉnh sửa</th>
												<th>Mã nhân viên</th>
												<th>Họ và tên</th>
												<th>Phòng ban</th>
												<th>Điểm thưởng</th>
												<th>Điểm phạt</th>
												<th>Điểm thành tích</th>
											</tr>
										</thead>
										<tbody>

											<c:forEach var="p" items="${listStaff}" varStatus="loop">
											<form name="form" method="POST" action="update-achievement" >
													
												<tr>
													<td>${loop.index+1}</td>
													<td>
													<button name="update" style="background: #55ce63;
                                                    border: 1px solid #55ce63; color: white; font-size: 13px; border-radius: 5px; width: 70px; height: 25px;" >Lưu</button>
                                                    
                                                    <button name="discipline" style="background: #55ce63;
                                                    border: 1px solid #55ce63; color: white; font-size: 13px; border-radius: 5px; width: 70px; height: 25px; margin-left: 5px" >Kỉ luật</button>
													</td>
													<td><input type="checkbox" name="chk"
														style="transform: scale(1.8); margin-left: 20px; margin-top: 10px; background-color: red"
														onchange="chon(this,sl${loop.index+1}, sl2${loop.index+1})"></td>
													<td><input type="text" style="border: 0px; width: 20px " readonly="readonly" name="Id" value="${p.idStaff}"></td>
													<td>${p.fullname}</td>
													<td>${p.department.departsName}</td>
													<td><input
														style="width: 70px; margin-left: 15px; border-radius: 6px; border: 1px solid black;"
														disabled type="number" id="sl${loop.index+1}"
														value="${p.rewardPoint}" name="RewardPoint"></td>
													<td><input
														style="width: 70px; margin-left: 13px; border-radius: 6px; border: 1px solid black;"
														disabled type="number" id="sl2${loop.index+1}"
														value="${p.penaltyPoints}" name="PenaltyPoints"></td>
													<td>${p.rewardPoint - p.penaltyPoints}</td>
													</form>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script>
					function cla(id) {

						var x = document.getElementsByName('chk'); //lấy các object checkbox
						var y = document.getElementsByName('RewardPoint');
						var z = document.getElementsByName('PenaltyPoints');
						//lấy các object textbox số lượng
						for (var i = 0; i < x.length; i++) {//vòng for nhỏ hơn số lượng checkbox
							if (id.checked) {//checkbox đầu mà đã chọn
								x[i].checked = true;//tất cả checkbox sau đều được chọn
								y[i].disabled = false; //thuộc tính disable được vô hiệu hóa
								z[i].disabled = false; //thuộc tính disable được vô hiệu hóa
								y[0].focus();//focus được đưua đến ô đầu tiên
							}
						}
					}
					function chon(obj, id1, id2) {//tham số 1 là đối tượng ckechbox này, tham số 2 là id của số lượng
						if (obj.checked) {// nếu checkbox được chọn
							id1.disabled = false; //cho phép nhập sl
							id2.disabled = false;
							id1.focus(); //focus vào số lượng
						} else {// nếu checkbox không được chọn
							id1.disabled = true;//không cho phép nhập
							id2.disabled = true;//không cho phép nhập
						}
					}
				</script>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
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

</html>