<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
<jsp:setProperty name="users" property="users_id"/>
<jsp:setProperty name="users" property="users_name"/>
<jsp:setProperty name="users" property="users_phone"/>
<jsp:setProperty name="users" property="users_email"/>

<!DOCTYPE html>
<html>
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
<title>Form Register - Vali Admin</title>
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
    <header class="app-header"><a class="app-header__logo" href="calendar.jsp">Spring</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">

        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="user_info.jsp"><i class="fa fa-user fa-lg"></i> Profile</a></li>
            <li><a class="dropdown-item" href="login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </header>
    
    <!-- Sidebar menu-->
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <ul class="app-menu">
        <li><a class="app-menu__item " href="calendar.jsp"><i class="app-menu__icon fa fa-calendar"></i><span class="app-menu__label">스프링 달력</span></a></li>
		<li><a class="app-menu__item" href="diary_search.jsp"><i class="app-menu__icon fa fa-pencil-square-o"></i><span class="app-menu__label">식물일지</span></a></li>
        <li><a class="app-menu__item" href="search.jsp"><i class="app-menu__icon fa fa-search"></i><span class="app-menu__label">식물검색</span></a></li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-user-circle"></i><span class="app-menu__label">마이페이지</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="group_register.jsp"><i class="icon fa fa-users"></i> 그룹관리</a></li>
            <li><a class="treeview-item" href="plant_register.jsp"><i class="icon fa fa-leaf"></i> 식물관리</a></li>
            <li><a class="treeview-item active" href="user_info.jsp"><i class="icon fa fa-address-card"></i> 회원정보 관리</a></li>
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
		<div>
			<h1>
				<i class="fa fa-edit"></i> Form Register
			</h1>
			<p>Sample forms</p>
		</div>
		<ul class="app-breadcrumb breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item">Forms</li>
			<li class="breadcrumb-item"><a href="#">Sample Forms</a></li>
		</ul>
	</div>
	<div class="row">
		<div class="col-md-10">
			<div class="tile">
				<h3 class="tile-title"></h3>
				<div class="tile-body">
					<title>회원가입 화면</title>

					<!-- css 파일 분리 -->

					<link href='../../css/join_style.css' rel='stylesheet' style='text/css' />
					<script type="text/javascript">
             // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
              function checkValue() {
   
                if(!document.userInfo.password.value){
                  alert("정보를 수정하시려면 비밀번호를 입력하세요.");
                  return false;
                }

            }
        </script>

					</head>
					<body>
						<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
						<div id="wrap">
							<br>
							<br> <b><font size="5" color="black">회원정보 관리</font></b> <br>
							<br>
							<br>


							<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
							<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
							<form method="post" action="../docs/infoCheck.jsp" name="users"	onsubmit="return checkValue()">
								<div class="form-group row">
									<label class="control-label col-md-2">아이디</label>
									<div class="col-md-6">
										<h8><%=users.getUsers_id()%><h8>
									</div>
								</div>


								<div class="form-group row">
									<label class="control-label col-md-2">비밀번호</label>
									<div class="col-md-6">
										<input class="form-control" type="password" name="password"
											maxlength="50" placeholder="정보를 수정하시려면 비밀번호를 입력하세요">
									</div>
								</div>

								<div class="form-group row">
									<label class="control-label col-md-2">이름(닉네임)</label>
									<div class="col-md-6">
									<%
      // db에서 정보 얻어와 테이블에 출력하기
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      try {
    	  	String dburl = "jdbc:mysql://localhost:3306/garden_db?useUnicode=true&characterEncoding=UTF-8";
			String dbid = "root";
			String dbpassword = "54321";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbid, dbpassword);
			String sql = "SELECT USERS_NAME FROM USERS WHERE USERS_ID = ?";
       pstmt = conn.prepareStatement(sql);
       pstmt.setString(1, users.getUsers_id());
       rs = pstmt.executeQuery();
       while (rs.next()) {
        String USERS_NAME = rs.getString("USERS_NAME");
        
     %>

     <h8><%=USERS_NAME%><h8>
     <%
      }
      } catch (SQLException se) {
       System.out.println(se.getMessage());
      } finally {
          try {
           if (rs != null)
            rs.close();
           if (pstmt != null)
            pstmt.close();
           if (conn != null)
            conn.close();
          } catch (SQLException se) {
           System.out.println(se.getMessage());
          }

         } 
     %>  
									
									

									</div>
								</div>

								<div class="form-group row">
									<label class="control-label col-md-2">휴대전화</label>

									<div class="col-md-6">
									<%
      // db에서 정보 얻어와 테이블에 출력하기
      Connection pconn = null;
      PreparedStatement ppstmt = null;
      ResultSet prs = null;
      try {
    	  	String dburl = "jdbc:mysql://localhost:3306/garden_db?useUnicode=true&characterEncoding=UTF-8";
			String dbid = "root";
			String dbpassword = "54321";

			Class.forName("com.mysql.jdbc.Driver");
			pconn = DriverManager.getConnection(dburl, dbid, dbpassword);
			String sql = "SELECT USERS_PHONE FROM USERS WHERE USERS_ID = ?";
       ppstmt = pconn.prepareStatement(sql);
       ppstmt.setString(1, users.getUsers_id());
       prs = ppstmt.executeQuery();
       while (prs.next()) {
        String USERS_PHONE = prs.getString("USERS_PHONE");
        
     %>

     <h8><%=USERS_PHONE%><h8>
     <%
      }
      } catch (SQLException se) {
       System.out.println(se.getMessage());
      } finally {
          try {
           if (rs != null)
            rs.close();
           if (pstmt != null)
            pstmt.close();
           if (conn != null)
            conn.close();
          } catch (SQLException se) {
           System.out.println(se.getMessage());
          }

         } 
     %>
									</div>
								</div>
								
								<div class="form-group row">
									<label class="control-label col-md-2">이메일</label>

									<div class="col-md-6">
									<%
      // db에서 정보 얻어와 테이블에 출력하기
      Connection ppconn = null;
      PreparedStatement pppstmt = null;
      ResultSet pprs = null;
      try {
    	  	String dburl = "jdbc:mysql://localhost:3306/garden_db?useUnicode=true&characterEncoding=UTF-8";
			String dbid = "root";
			String dbpassword = "54321";

			Class.forName("com.mysql.jdbc.Driver");
			ppconn = DriverManager.getConnection(dburl, dbid, dbpassword);
			String sql = "SELECT USERS_EMAIL FROM USERS WHERE USERS_ID = ?";
       pppstmt = ppconn.prepareStatement(sql);
       pppstmt.setString(1, users.getUsers_id());
       pprs = pppstmt.executeQuery();
       while (pprs.next()) {
        String USERS_EMAIL = pprs.getString("USERS_EMAIL");
        
     %>

     <h8><%=USERS_EMAIL%><h8>
     <%
      }
      } catch (SQLException se) {
       System.out.println(se.getMessage());
      } finally {
          try {
           if (rs != null)
            rs.close();
           if (pstmt != null)
            pstmt.close();
           if (conn != null)
            conn.close();
          } catch (SQLException se) {
           System.out.println(se.getMessage());
          }

         } 
     %>
									</div>
								</div>
						</div>

						<br>
						<button class="btn btn-primary" type="submit" value="정보 수정">정보 수정
						</button>
						</form>
				</div>
			</div>
		</div>



		<div class="clearix"></div>

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
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
</body>
</html>