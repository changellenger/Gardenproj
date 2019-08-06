<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>FNQ page</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Main CSS-->
<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
	margin-bottom : 10px;
}
.contents{	
    padding-top: 20px;
    padding-left: 10px;
}
.faqHeader {
	font-size: 27px;
	margin: 20px;
}

.panel-heading [data-toggle="collapse"]:after {
	font-family: "FontAwesome";
	content: "\f107"; /* "play" icon */
	float: right;
	color: #066631;
	font-size: 18px;
	line-height: 22px;
	/* rotate "play" icon from > (right arrow) to down arrow */
	-webkit-transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-ms-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	transform: rotate(180deg);
}

.panel-heading [data-toggle="collapse"].collapsed:after {
	/* rotate "play" icon from > (right arrow) to ^ (up arrow) */
	-webkit-transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	transform: rotate(0deg);
	color: #454444;
}

.container {
	margin: 0;
	font-family: "Lato", -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, "Helvetica Neue", Arial, sans-serif;
	font-size: 0.875rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #FFF;
}
</style>

</head>
<body class="app sidebar-mini rtl">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="calendar.jsp">Spring</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>

    </header>

    
      <!-- Sidebar menu-->
     <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <ul class="app-menu">
        <li><a class="app-menu__item" href="calendar.jsp"><i class="app-menu__icon fa fa-calendar"></i><span class="app-menu__label">스프링 달력</span></a></li>
		<li><a class="app-menu__item" href="diary_search.jsp"><i class="app-menu__icon fa fa-pencil-square-o"></i><span class="app-menu__label">식물일지</span></a></li>
        <li><a class="app-menu__item" href="search.jsp"><i class="app-menu__icon fa fa-search"></i><span class="app-menu__label">식물검색</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-user-circle"></i><span class="app-menu__label">마이페이지</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="group_register.jsp"><i class="icon fa fa-users"></i> 그룹관리</a></li>
            <li><a class="treeview-item" href="plant_register.jsp"><i class="icon fa fa-leaf"></i> 식물관리</a></li>
            <li><a class="treeview-item" href="user_info.jsp"><i class="icon fa fa-address-card"></i> 회원정보 관리</a></li>
          </ul>
        </li>
        
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-bullhorn"></i><span class="app-menu__label">공지사항/Q&A</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
          	<li><a class="treeview-item" href="notice_spring.jsp"><i class="icon fa fa-circle-o"></i> 공지사항</a></li>
            <li><a class="treeview-item active" href="faqpage.jsp"><i class="icon fa fa-circle-o"></i> Q&A</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="introduce.jsp"><i class="app-menu__icon fa fa-info"></i><span class="app-menu__label">Spring 소개</span></a></li>
      </ul>
    </aside>


	<main class="app-content">
	<div class="app-title">
		<div>
			<h1>
				<i class="fa fa-dashboard"></i> FAQ PAGE
			</h1>
			<p>자주 묻는 질문과 답변</p>
		</div>
		<ul class="app-breadcrumb breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item"><a href="#">FAQ Page</a></li>
		</ul>
	</div>
	<!-- FNQ BOOTSTRAP -->
	<div class="col-md-12">
		<div class="tile">
			<br />

			<div class="panel-group" id="accordion">
				<div class="faqHeader">자주 묻는 질문과 답을 확인하세요 :) </div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">

							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseOne">회원가입이 반드시
								필요하나요?</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in">
						<div class="card">
							<p class="contents">저희는 회원가입시 입력한 그룹 및 식물정보를 기반으로<br> 맞춤형 캘린더/알람 서비스를 제공하기 때문에
							회원가입이 필요합니다.<br> 단,식물검색은 회원가입 없이 사용 가능하오니 참고 부탁드립니다.<br>
							<br></p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTen">물을 준것을 까먹고 체크하지
								못한 경우는 어떻게 하나요?</a>
						</h4>
					</div>
					<div id="collapseTen" class="panel-collapse collapse">
						<div class="card">
							<p class="contents">저희는 마지막으로 물을 준 시점을 기준으로 물 주는 주기의 알림을 서비스해드리고 있습니다.<br> 시간이
							지났더라도 마지막으로 물 준 날짜를 체크하면 다시 업데이트가 가능합니다.<br> <br></p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseEleven">알람이 오지 않아요. </a>
						</h4>
					</div>
					<div id="collapseEleven" class="panel-collapse collapse">
						<div class="card">
							<p class="contents">스프링으로부터 푸시 알람 또는 알림가 오지 않고 있다면, 다음을 확인해주세요.<br>
									1. OS 설정애서 알림 설정 확인<br>
									2. 앱내에서의 알림 설정 확인<br>
									3. 재로그인 후, 앱 재설치<br></p>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo">공유캘린더에서 멤버제거는 어떻게 하나요?</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="card">
							<p class="contents">공유 캘린더에서의 [작성자]만이 멤버를 제거할 수 있습니다.<br>
							그룹관리 페이지에서 멤버리스트 수정 및 삭제가 가능하오니 참고 부탁드립니다.</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree">등록한 식물의 물주기 일정이 보이지 않아요.</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse">
						<div class="card">
							<p class="contents">
							일정이 표시가 되지 않거나 공유되지 않는 경우에는<br>
							 1) 일정 작성자가 다른 캘린더에 일정을 작성한 경우 또는<br>
							 2) 일시적인 네트워크 오류의 가능성이 큽니다.<br>
							 
							</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFive">캘린더를 처음 생성한 사람이 탈퇴하면 어떻게 되나요?</a>
						</h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse">
						<div class="card">
							<p class="contents">
							현재의 생성자가 캘린더에서 나가게 된다면, 다음으로 캘린더에 참가한 멤버에게 생성자 권한이 자동으로 부여됩니다.<br>
							생성자는 캘린더의 멤버를 제거를 할 수 있는 권한이 부여됩니다. </p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseSix">계정 삭제는 어떻게 하나요?</a>
						</h4>
					</div>
					<div id="collapseSix" class="panel-collapse collapse">
						<div class="card">
						<p class="contents">
							회원정보 수정 페이지에 들어가면 회원탈퇴 버튼이 있습니다. 누르면 계정 삭제가 가능합니다.
							</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseEight">위젯을 사용할 수 있나요?</a>
						</h4>
					</div>
					<div id="collapseEight" class="panel-collapse collapse">
						<div class="card"><p class="contents">스프링은 안드로이드,IOS 모두 위젯을 지원합니다.
						핸드폰 설정에 들어가시면 위젯 추가 가능합니다.</p>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="form-control" data-toggle="collapse"
								data-parent="#accordion" href="#collapseNine">스프링 업데이트가 되지 않습니다.</a>
						</h4>
					</div>
					<div id="collapseNine" class="panel-collapse collapse">
						<div class="card">
						<p class="contents">Apple 앱스토어 또는 Google 플레이 스토어에서 정보 표시를 하는데에 문제가 있거나 TimeTree 앱을 다운로드하는데 문제가 있는 경우,<br>
						 각각의 스토어의 기술적 문제일 가능성이 높습니다.<br>
						 아래 방법으로 문제 해결을 시도해보세요.<br>
						-스마트폰 재기동<br>
						- TimeTree와 각각의 스토어의 캐쉬(Cache)삭제<br>
						 </p></div>
					</div>
				</div>
			</div>


				<br />	<br />	<br />	<br />
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