<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
<jsp:setProperty name="users" property="users_id"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<!-- Twitter meta-->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:site" content="@pratikborsadiya">
<meta property="twitter:creator" content="@pratikborsadiya">
<!-- Open Graph Meta-->
<meta property="og:type" content="website">
<meta property="og:site_name" content="Vali Admin">
<meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
<meta property="og:url"
	content="http://pratikborsadiya.in/blog/vali-admin">
<meta property="og:image"
	content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
<meta property="og:description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
<title>Spring</title>
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
		<a class="app-header__logo" href="calendar.jsp">Spring</a>
		<!-- Sidebar toggle button-->
		<a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
			aria-label="Hide Sidebar"></a>
		<!-- Navbar Right Menu-->
		<ul class="app-nav">

			<!-- User Menu-->
			<li class="dropdown"><a class="app-nav__item" href="#"
				data-toggle="dropdown" aria-label="Open Profile Menu"><i
					class="fa fa-user fa-lg"></i></a>
				<ul class="dropdown-menu settings-menu dropdown-menu-right">
					<li><a class="dropdown-item" href="user_info.jsp"><i
							class="fa fa-user fa-lg"></i> Profile</a></li>
					<li><a class="dropdown-item" href="login.html"><i
							class="fa fa-sign-out fa-lg"></i> Logout</a></li>
				</ul></li>
		</ul>
	</header>

	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
	<aside class="app-sidebar">
		<ul class="app-menu">
			<li><a class="app-menu__item" href="calendar.jsp"><i
					class="app-menu__icon fa fa-calendar"></i><span
					class="app-menu__label">스프링 달력</span></a></li>
			<li><a class="app-menu__item" href="diary_search.jsp"><i
					class="app-menu__icon fa fa-pencil-square-o"></i><span
					class="app-menu__label">식물일지</span></a></li>
			<li><a class="app-menu__item active" href="search.jsp"><i
					class="app-menu__icon fa fa-search"></i><span
					class="app-menu__label">식물검색</span></a></li>
			<li class="treeview"><a class="app-menu__item" href="#"
				data-toggle="treeview"><i
					class="app-menu__icon fa fa-user-circle"></i><span
					class="app-menu__label">마이페이지</span><i
					class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item" href="group_register.jsp"><i
							class="icon fa fa-users"></i> 그룹관리</a></li>
					<li><a class="treeview-item" href="plant_register.jsp"><i
							class="icon fa fa-leaf"></i> 식물관리</a></li>
					<li><a class="treeview-item" href="user_info.jsp"><i
							class="icon fa fa-address-card"></i> 회원정보 관리</a></li>
				</ul></li>

			<li class="treeview"><a class="app-menu__item" href="#"
				data-toggle="treeview"><i class="app-menu__icon fa fa-bullhorn"></i><span
					class="app-menu__label">공지사항/Q&A</span><i
					class="treeview-indicator fa fa-angle-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="treeview-item" href="notice_spring.jsp"><i
							class="icon fa fa-circle-o"></i> 공지사항</a></li>
					<li><a class="treeview-item" href="faqpage.jsp"><i
							class="icon fa fa-circle-o"></i> Q&A</a></li>
				</ul></li>
			<li><a class="app-menu__item" href="introduce.jsp"><i
					class="app-menu__icon fa fa-info"></i><span class="app-menu__label">Spring
						소개</span></a></li>
		</ul>
	</aside>

	<main class="app-content">
	<div class="app-title">
		<div>
			<h1>
				<i class="fa fa-search"></i> 검색
			</h1>
		</div>
		<ul class="app-breadcrumb breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item">page</li>
			<li class="breadcrumb-item"><a href="#">검색</a></li>
		</ul>
	</div>


	</div>
	<div class="clearix"></div>
	<div class="col-md-12">
		<div class="tile">

			<!-- 검색 -->
			<button class="btn btn-secondary"
				onclick="location.href='search.jsp'">
				<i class="fa fa-fw fa-lg fa-arrow-left"> </i>
			</button>

			<!-- 		<div class="col-md-3">
								<div class="bs-component">
									111
									<div class="progress mb-2">
										<div class="progress-bar bg-success" role="progressbar"
											style="width: 25%" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									222
									<div class="progress mb-2">
										<div class="progress-bar bg-info" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									333
									<div class="progress mb-2">
										<div class="progress-bar bg-warning" role="progressbar"
											style="width: 75%" aria-valuenow="75" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									444
									<div class="progress mb-2">
										<div class="progress-bar bg-danger" role="progressbar"
											style="width: 100%" aria-valuenow="100" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>

							</div> -->
			<!--  radar -->
			<!-- 				 <div class="col-md-5">
								          <div class="tile">
								            <h3 class="tile-title"></h3>
								            <div class="embed-responsive embed-responsive-16by9">
								              <canvas class="embed-responsive-item" id="radarChartDemo"></canvas>
								            </div>
								          </div>
								        </div>
								        
					 -->


			<br> <br> <br>
			<div class="col-md-12" align=center>
				<div class="tile">
					<div class="tile-title-w-btn"></div>

					<div class="tab-content">
						<div class="tab-pane active" id="plantcheck"></div>
					</div>


				</div>
			</div>
		</div>
	</div>
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
	<script type="text/javascript" src="js/plugins/chart.js"></script>
	<script type="text/javascript">
	
    document.addEventListener('DOMContentLoaded', function() {
		groupsearch('<%=request.getParameter("plant_num")%>');
			//groupsearch(4)
		});

		function radarchart() {
			var data = {
				labels : [ "난이도", "인기도", "크기", "성장속도", "일조량" ],
				datasets : [

				{
					label : "My first dataset",
					fillColor : "rgba(151,187,205,0.2)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					pointHighlightFill : "#fff",
					pointHighlightStroke : "rgba(151,187,205,1)",
					data : [ 40, 60, 20, 70, 40 ]
				} ]
			};

			var ctxr = $("#radarChartDemo").get(0).getContext("2d");
			var radarChart = new Chart(ctxr).Radar(data);

		}

		// 생성
		function groupsearch(plant_num) {
			var urlgroup = "PlantInfoServlet?plant_num=" + plant_num; // 여기까지는 서블릿 안부르고 그냥 문자열
			$.ajax({
				type : "POST",
				url : urlgroup, //SpringCalendarGroupServlet?groupNum=40001		여기서 서블릿으로 보냄
				success : function(html) // 성공하면 이후 함수 실행 받는 데이터는 html 이라는 변수에 저장
				{
					//이 부분을 수정?!!?!! 확ㅇㅣㄴ학!!!!!
					//$('#notice_alert').remove();	
					$('#plantcheck').append(html); //append 는 #이름 값에 뒤에 그대로 입력 

					radarchart();
				}
			});
		}

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