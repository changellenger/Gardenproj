<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	</header>


	<!-- Sidebar menu 
	추후 로그인 비활성화기능 구현시 사용할 코드
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
					class="app-menu__icon fa fa-info"></i><span class="app-menu__label">Spring 소개</span></a></li>
		</ul>
	</aside>
	-->

	
	
	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <ul class="app-menu">
        <li><a class="app-menu__item" href="calendar.jsp"><i class="app-menu__icon fa fa-calendar"></i><span class="app-menu__label">스프링 달력</span></a></li>
		<li><a class="app-menu__item" href="diary_search.jsp"><i class="app-menu__icon fa fa-pencil-square-o"></i><span class="app-menu__label">식물일지</span></a></li>
        <li><a class="app-menu__item" href="search.jsp"><i class="app-menu__icon fa fa-search"></i><span class="app-menu__label">식물검색</span></a></li>
        <li class="treeview is-expanded">
        	<a class="app-menu__item" href="#" data-toggle="treeview">
        		<i class="app-menu__icon fa fa-user-circle"></i>
        			<span class="app-menu__label">마이페이지</span>
        		<i class="treeview-indicator fa fa-angle-right"></i>
        	</a>
          <ul class="treeview-menu">
            <li><a class="treeview-item active" href="group_register.jsp"><i class="icon fa fa-users"></i> 그룹관리</a></li>
            <li><a class="treeview-item" href="plant_register.jsp"><i class="icon fa fa-leaf"></i> 식물관리</a></li>
            <li><a class="treeview-item" href="user_info.jsp"><i class="icon fa fa-address-card"></i> 회원정보 관리</a></li>
          </ul>
        </li>
        
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-bullhorn"></i><span class="app-menu__label">공지사항/Q&A</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
          	<li><a class="treeview-item" href="notice_spring.jsp"><i class="icon fa fa-circle-o"></i> 공지사항</a></li>
            <li><a class="treeview-item" href="faqpage.jsp"><i class="icon fa fa-circle-o"></i> Q&A</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="introduce.jsp"><i class="app-menu__icon fa fa-info"></i><span class="app-menu__label">Spring 소개</span></a></li>
      </ul>
    </aside>
	<main class="app-content">
	<div class="app-title">


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
								<font size=5>홍길동 님, "우리집" 그룹이 생성되었습니다. </font>
							</div>
							<br> <br>
							<div> 마지막으로, 기르는 식물을 등록하여<br> 나만의 캘린더 서비스를 시작하세요.<br><br>
							
								식물을 기르는 그룹별, 장소별로 설정하여 <br> 더욱 효과적으로 식물을 관리할 수 있습니다.
							</div>
							<br>
							<button class="btn btn-primary" type="button">
								<i></i>식물 등록하기
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