<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
<jsp:setProperty name="users" property="users_name"/>
<jsp:setProperty name="users" property="users_id"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login - Vali Admin</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">
	<!-- Navbar-->
	<header class="app-header">
		<a class="app-header__logo" href="page-login2.html">Spring</a>
		<!-- Sidebar toggle button-->
		<a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
			aria-label="Hide Sidebar"></a>

	</header>


	<!-- Sidebar menu-->
	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
	<aside class="app-sidebar">
		<ul class="app-menu">
			<li><a class="app-menu__item" href="search.html"><i
					class="app-menu__icon fa fa-search"></i><span
					class="app-menu__label">식물검색</span></a></li>

			<li class="treeview"><a class="app-menu__item" href="#"
				data-toggle="treeview"><i class="app-menu__icon fa fa-bullhorn"></i><span
					class="app-menu__label">공지사항/Q&A</span><i
					class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item"
						href="https://fontawesome.com/v4.7.0/icons/" target="_blank"
						rel="noopener"><i class="icon fa fa-circle-o"></i> 공지사항</a></li>
					<li><a class="treeview-item" href="ui-cards.html"><i
							class="icon fa fa-circle-o"></i> Q&A</a></li>
				</ul></li>
			<li><a class="app-menu__item" href="charts.html"><i
					class="app-menu__icon fa fa-info"></i><span class="app-menu__label">Spring
						소개</span></a></li>
		</ul>
	</aside>

	<main class="app-content">
	<div class="app-title">
		<div>
			<h1>
				<i class="fa fa-edit"></i> Register Check
			</h1>
		</div>
		<ul class="app-breadcrumb breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item">Forms</li>
			<li class="breadcrumb-item"><a href="#">Sample Forms</a></li>
		</ul>
	</div>

	</head>

	<body>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">

					<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
					<div id="wrap">
						<div align=center>
							<div>
								<font size=5>
								<%=users.getUsers_name() %>님, 회원가입이 완료되었습니다! </font>
							
							</div>
							<br> <br>
							<div>
								식물을 기르는 그룹별, 장소별로 설정하여 <br> 더욱 효과적으로 식물을 관리하세요.
							</div>
							<br>
							<button class="btn btn-primary"  onclick="location.href='calendar.jsp' " type="button">
								<i></i>Spring 시작하기
							</button>

						</div>
					</div>
				</div>
			</div>
		</div>





		<div class="clearix"></div>
	</main>
	<!-- Essential javascripts for application to work-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<!-- The javascript plugin to display page loading on top-->
	<script src="js/plugins/pace.min.js"></script>
	<!-- Page specific javascripts-->
	<!-- Google analytics script-->
	<script type="text/javascript">
		if (document.location.hostname == 'pratikborsadiya.in') {
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');
			ga('create', 'UA-72504830-1', 'auto');
			ga('send', 'pageview');

				
		}
	</script>
</body>
</html>