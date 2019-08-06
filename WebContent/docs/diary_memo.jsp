<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	

<!DOCTYPE html>
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
<title>Page Search - Vali Admin</title>
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
		<a class="app-header__logo" href="index.html">Spring</a>
		<!-- Sidebar toggle button-->
		<a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
			aria-label="Hide Sidebar"></a>
		<!-- Navbar Right Menu-->
		<ul class="app-nav">
			<li class="app-search"><input class="app-search__input"
				type="search" placeholder="Search">
				<button class="app-search__button">
					<i class="fa fa-search"></i>
				</button></li>
			<!--Notification Menu-->
			<li class="dropdown"><a class="app-nav__item" href="#"
				data-toggle="dropdown" aria-label="Show notifications"><i
					class="fa fa-bell-o fa-lg"></i></a>
				<ul class="app-notification dropdown-menu dropdown-menu-right">
					<li class="app-notification__title">You have 4 new
						notifications.</li>
					<div class="app-notification__content">
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-primary"></i><i
										class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Lisa sent you a mail</p>
									<p class="app-notification__meta">2 min ago</p>
								</div></a></li>
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-danger"></i><i
										class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Mail server not
										working</p>
									<p class="app-notification__meta">5 min ago</p>
								</div></a></li>
						<li><a class="app-notification__item" href="javascript:;"><span
								class="app-notification__icon"><span
									class="fa-stack fa-lg"><i
										class="fa fa-circle fa-stack-2x text-success"></i><i
										class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
								<div>
									<p class="app-notification__message">Transaction complete</p>
									<p class="app-notification__meta">2 days ago</p>
								</div></a></li>
						<div class="app-notification__content">
							<li><a class="app-notification__item" href="javascript:;"><span
									class="app-notification__icon"><span
										class="fa-stack fa-lg"><i
											class="fa fa-circle fa-stack-2x text-primary"></i><i
											class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
									<div>
										<p class="app-notification__message">Lisa sent you a mail</p>
										<p class="app-notification__meta">2 min ago</p>
									</div></a></li>
							<li><a class="app-notification__item" href="javascript:;"><span
									class="app-notification__icon"><span
										class="fa-stack fa-lg"><i
											class="fa fa-circle fa-stack-2x text-danger"></i><i
											class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
									<div>
										<p class="app-notification__message">Mail server not
											working</p>
										<p class="app-notification__meta">5 min ago</p>
									</div></a></li>
							<li><a class="app-notification__item" href="javascript:;"><span
									class="app-notification__icon"><span
										class="fa-stack fa-lg"><i
											class="fa fa-circle fa-stack-2x text-success"></i><i
											class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
									<div>
										<p class="app-notification__message">Transaction complete</p>
										<p class="app-notification__meta">2 days ago</p>
									</div></a></li>
						</div>
					</div>
					<li class="app-notification__footer"><a href="#">See all
							notifications.</a></li>
				</ul></li>
			<!-- User Menu-->
			<li class="dropdown"><a class="app-nav__item" href="#"
				data-toggle="dropdown" aria-label="Open Profile Menu"><i
					class="fa fa-user fa-lg"></i></a>
				<ul class="dropdown-menu settings-menu dropdown-menu-right">
					<li><a class="dropdown-item" href="page-user.html"><i
							class="fa fa-cog fa-lg"></i> Settings</a></li>
					<li><a class="dropdown-item" href="page-user.html"><i
							class="fa fa-user fa-lg"></i> Profile</a></li>
					<li><a class="dropdown-item" href="page-login.html"><i
							class="fa fa-sign-out fa-lg"></i> Logout</a></li>
				</ul></li>
		</ul>
	</header>
	<!-- Sidebar menu-->
	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
	<aside class="app-sidebar">
		<ul class="app-menu">
			<li><a class="app-menu__item" href="calendar.jsp"><i
					class="app-menu__icon fa fa-calendar"></i><span
					class="app-menu__label">스프링 달력</span></a></li>
			<li><a class="app-menu__item active" href="diary_search.jsp"><i
					class="app-menu__icon fa fa-pencil-square-o"></i><span
					class="app-menu__label">식물일지</span></a></li>
			<li><a class="app-menu__item" href="search.jsp"><i
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
				<i class="fa fa-search"></i> Check a plant diary.
			</h1>
		</div>
		<ul class="app-breadcrumb breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item">page</li>
			<li class="breadcrumb-item"><a href="#"></a></li>
		</ul>
	</div>


</div>
	<div class="clearix"></div>
	<div class="col-md-12" align="center">
		<div class="tile">

			<!-- 검색 -->
			<h3 class="tile-title" align="center">식물일지</h3>
			<div class="tile-body">
				<form class="form-horizontal" role="form">
					<div class="form-group col-md-12"></div>


					<div class="row">
						<div class="col-md-6">
							<div class="tile">
								<div class="tile-title-w-btn">
									<h3 class="title">Status</h3>
								</div>
								<div class="tile-body">
									<img src="Img/01.plantimage.PNG"> <br />  <br /> <br /> <br /> 
								</div>
							</div>
						</div>

						<div class="col-md-6" >
							<div class="tile" id="memomk">
						


								<!-- 	<h3 class="tile-title">Memo</h3>
							<div class="messanger">
								<div class="messages">
									<p class="text-muted">
										<small> <br />
										<br />
										<br /> 7월 2일 19:30
										</small>
									</p>
								

									<p class="text-muted">
										<small> 7월 21일 11:30 </small>
									</p>
									<div class="message me">
										<img
											src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg">
										<p class="info">강낭콩관찰일지로써 강낭콩 씨앗을 심는 과정에서부터 강낭콩의 싹이 트고
											강낭콩이 변화하는 한살이 과정을 찍은 생생한 이미지와 실제로 관찰한 기록을 담고 있습니다. 한글 또는 워드
											파일로 제공하며 총 11페이지로 구성되어 있으며 수정이 가능합니다.</p>

									</div>

			
									<p class="text-muted">
										<small> 5월 15일 09:30 </small>
									</p>
									<div class="message">
										<img
											src="https://s3.amazonaws.com/uifaces/faces/twitter/tonypeterson/48.jpg">
										<p class="info">행복한 회사생활~ 오늘은 승진한 날~~ 기분이 너무너무 좋다~ 식물이 덕분인
											이느낌? 오래오래 함께해~~~</p>
									</div>


									</div>


								</div> -->
		 
			  

	
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
	
	
	<script type="text/javascript">
	
	
	document.addEventListener('DOMContentLoaded', function() {
		memocheck();
        
      });
	
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
      
  	function check(){
  		
  		var val = $('#memo_cont').val();
  		memowrite(val)
  	}
  	
  	function memocheck(){
			var urlgroup = "MemoDetailServlet"; // 여기까지는 서블릿 안부르고 그냥 문자열
			$.ajax({
				type : "POST",
				url : urlgroup, //SpringCalendarGroupServlet?groupNum=40001		여기서 서블릿으로 보냄
				success : function(html) // 성공하면 이후 함수 실행 받는 데이터는 html 이라는 변수에 저장
				{
			$('#memomk').append(html); //append 는 #이름 값에 뒤에 그대로 입력 
				}
			});
  	
      
  	 }
  	

  	
  	function memowrite(cont){
			var urlgroup = "MemoWriteServlet"; // 여기까지는 서블릿 안부르고 그냥 문자열
			$.ajax({
				type : "POST",
				data : {"memo_cont": cont},
				url : urlgroup, //SpringCalendarGroupServlet?groupNum=40001		여기서 서블릿으로 보냄
				success : function(html) // 성공하면 이후 함수 실행 받는 데이터는 html 이라는 변수에 저장
				{
					$('#memomk').append(html); 	//append 는 #이름 값에 뒤에 그대로 입력 
				}
			});
  	
      
  	 }
          
		
          
		

	 	
  	
	</script>
</body>
</html>
