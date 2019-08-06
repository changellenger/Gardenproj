<%@page import="java.sql.SQLException"%>
<%@page import="groupinfo.Groupinfo"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="petinfo" class="petinfo.Petinfo" scope="session" ></jsp:useBean>
<jsp:setProperty name="petinfo" property="plant_name"/>
<jsp:setProperty name="petinfo" property="group_name"/>
<jsp:setProperty name="petinfo" property="petplant_name"/>
<jsp:setProperty name="petinfo" property="petplant_wterm"/>
<jsp:useBean id="waterinfo" class="waterinfo.Waterinfo" scope="session" ></jsp:useBean>
<jsp:setProperty name="waterinfo" property="water_date1"/>
<jsp:setProperty name="waterinfo" property="water_date2"/>
<jsp:setProperty name="waterinfo" property="petplant_name"/>
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
<jsp:setProperty name="users" property="users_id"/>


<!DOCTYPE html>
<html>
<head>

    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Form Register - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
    
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <ul class="app-menu">
        <li><a class="app-menu__item" href="calendar.jsp"><i class="app-menu__icon fa fa-calendar"></i><span class="app-menu__label">스프링 달력</span></a></li>
		<li><a class="app-menu__item" href="diary_search.jsp"><i class="app-menu__icon fa fa-pencil-square-o"></i><span class="app-menu__label">식물일지</span></a></li>
        <li><a class="app-menu__item" href="search.jsp"><i class="app-menu__icon fa fa-search"></i><span class="app-menu__label">식물검색</span></a></li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-user-circle"></i><span class="app-menu__label">마이페이지</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="group_register.jsp"><i class="icon fa fa-users"></i> 그룹관리</a></li>
            <li><a class="treeview-item  active" href="plant_register.jsp"><i class="icon fa fa-leaf"></i> 식물관리</a></li>
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
        <div>
          <h1><i class="fa fa-edit"></i> Form Register</h1>
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
		<script type="text/javascript">
		// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
						function checkPetValue() {
							if (!document.petinfo.group_name.value) {
								alert("그룹을 선택하세요.");
								return false;
							}

							if (!document.petinfo.plant_name.value) {
								alert("식물을 선택하세요.");
								return false;
							}
							
							if (!document.petinfo.petplant_name.value) {
								alert("식물애칭을 입력하세요.");
								return false;
							}
							
							if (!document.petinfo.petplant_wterm.value) {
								alert("마지막으로 물 준 날짜를 선택하세요.");
								return false;
							}
						}
							
							function getDate() {
								var today = new Date();
								var dd = today.getDate();
								var mm = today.getMonth()+1; //January is 0!
								var yyyy = today.getFullYear();

								if(dd<10) {
								    dd='0'+dd
								} 

								if(mm<10) {
								    mm='0'+mm
								} 

								today = yyyy+'-'+mm+'-'+dd;
								document.write(today);

							}
							
						
		</script>

          
    </head>
    <body>
    <!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
    <div id="wrap">
        <br><br>
        <b><font size="5" color="black">식물등록</font></b>
        <br><br><br>
        
 
        <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
        <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
        <!-- 지은/userinfo에서 groupinfo로 변경 -->
       <form method="post" action="../docs/joinPet.jsp" name="petInfo" onsubmit="return checkPetValue()">
          
        
             <div class="form-group row">
                <div class="col-md-6">
                	<div class="form-group">
                	<label for="exampleSelect1">그룹 선택</label>
                	<!-- <form name="frm_search" method="post" action="">
                    <select class="form-control" id="exampleSelect1">
                      <--<option>가울테리아</option>
                      <option>고무나무</option>
                      <option>구문초</option>
                      <option>극락조</option>
                    </select>-->
                    
     <select class="form-control" id="exampleSelect1" name = "group_name">
     <!--<option value=selected></option>  -->
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
			String sql = "SELECT GROUP_NAME FROM GROUP_INFO WHERE GROUP_NUM IN (SELECT GROUP_NUM FROM GROUP_MEMB WHERE USERS_NUM like (SELECT USERS_NUM FROM USERS WHERE USERS_ID = ? ))";
       pstmt = conn.prepareStatement(sql);
       pstmt.setString(1, users.getUsers_id());
       rs = pstmt.executeQuery();
       while (rs.next()) {
        String GROUP_NAME = rs.getString("GROUP_NAME");
        
     %>

     <option value=<%=GROUP_NAME%>><%=GROUP_NAME%></option>
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
 </select>
                    
                	</div>
                	</div>
                	</div>
                	
               <div class="form-group row">
               		<div class="col-md-6">
               		 <div class="form-group">
                    <label for="exampleSelect2">식물선택</label>
                    <!-- <form name="frm_search" method="post" action="">
                    <select class="form-control" id="exampleSelect2">
                      <option>가울테리아</option>
                      <option>고무나무</option>
                      <option>구문초</option>
                      <option>극락조</option>   -->
      <select class="form-control" id="exampleSelect2" name="plant_name">
     <!-- <option value=selected></option>  -->
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
		String sql = "SELECT PLANT_NAME FROM PLANT";
		ppstmt = pconn.prepareStatement(sql);
      	prs = ppstmt.executeQuery();
       while (prs.next()) {
        String PLANT_NAME = prs.getString("PLANT_NAME");
        
     %>

     <option value=<%=PLANT_NAME%>><%=PLANT_NAME%></option>
     <%
      }
      } catch (SQLException se) {
       System.out.println(se.getMessage());
      } finally {
       try {
        if (prs != null)
         prs.close();
        if (ppstmt != null)
         ppstmt.close();
        if (pconn != null)
         pconn.close();
       } catch (SQLException se) {
        System.out.println(se.getMessage());
       }

      }
     %>
                      
                      
                    </select>
                  </div>
                  </div>
      		</div>
      

         <div class="form-group row">
                <div class="col-md-6">
                	<label for="plantnickname">식물애칭</label>
                    <input class="form-control"  id="plantnickname" maxlength="20" placeholder="ex.베베" name="petplant_name">
                  </div>
      		</div>
      		
      		         <div class="form-group row">
                <div class="col-md-6">
                	<label for="plantnickname">물주는주기(일)</label>
                    <input class="form-control"  id="petplant_wterm" maxlength="20" placeholder="ex.7" name="petplant_wterm">
                  </div>
      		</div>
      		

             <div class="form-group row">
                <div class="col-md-6">
                 <label for="demoDate">마지막으로 물 준 날짜</label>
			     <input class="form-control" id="demoDate" id="waterinfo" type="text" placeholder="Select Date" name="water_date1">
                  </div>
      		</div>

      		
             <div class="form-group row">
                <div class="col-md-6">
				<div class="animated-checkbox">
              <label>
                <input type="checkbox" onclick="clicked();" id="waterinfo" name="water_date2" value=""> <span class="label-text">아직 물 준 적이 없습니다.</span>
              </label>
            </div>
			</div>
			</div>
			
            
				<div class="form-group">
				
	                    <label for="exampleSelect2">식물리스트</label>
	                    <div class="col-md-6">
	                    <!--  <select class="form-control" id="exampleSelect2" multiple="">
	                      <option>아가베(베베) </option>
	                      <option>콩고(콩콩)</option>
	                      <option>몬스테라(몬몬)</option>
	                      <option>스투키(투투)</option> -->
      <select class="form-control" id="exampleSelect2" name="plant_name" multiple="">
     <!-- <option value=selected></option>  -->
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
		//에이콘아카데미는 추후 위에 그룹선택값으로 바꿔준다.
		String sql ="SELECT PETPLANT_NAME FROM PETPLANT WHERE GROUP_NUM = (select GROUP_NUM FROM GROUP_INFO WHERE GROUP_NAME like '에이콘아카데미') AND GROUP_NUM IN (SELECT GROUP_NUM FROM GROUP_MEMB WHERE USERS_NUM = (SELECT USERS_NUM FROM USERS WHERE USERS_ID = ? ))";
		pppstmt = ppconn.prepareStatement(sql);
		pppstmt.setString(1, users.getUsers_id());
      	pprs = pppstmt.executeQuery();
       while (pprs.next()) {
        String PETPLANT_NAME = pprs.getString("PETPLANT_NAME");
        
     %>

     <option value=<%=PETPLANT_NAME%>><%=PETPLANT_NAME%></option>
     <%
      }
      } catch (SQLException se) {
       System.out.println(se.getMessage());
      } finally {
       try {
        if (prs != null)
         prs.close();
        if (ppstmt != null)
         ppstmt.close();
        if (pconn != null)
         pconn.close();
       } catch (SQLException se) {
        System.out.println(se.getMessage());
       }

      }
     %>
                      
                      
                    </select>
	                  </div>
	                  </div>
			<br>
			<div class="col-md-6">
 			<div class="button">
                <button class="btn btn-primary btn-lg" type="submit">등록 완료</button>
            </div>
            </div>
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
    <script type="text/javascript" src="js/plugins/bootstrap-datepicker.min.js"></script>
    <!-- Google analytics script-->
    <script src='fullc/3.10.0/lib/moment.min.js'></script>
    <script type="text/javascript">
    function clicked(){
     	const date = new Date();
        if(document.getElementById("waterinfo").checked){
        	      	 
       	var formattedDate = moment(date).format('YYYY-MM-DD');

        }else{
              	 
       	var formattedDate = moment(date).format('YYYY-MM-DD');

        }
        
   /*      
        
        var d = new Date(event.start);
        var t = new Date();
        console.log(d.toDateString());
        console.log(t.toDateString());
        
        var Wdate = new Date(event.start);
        var formattedDate = moment(Wdate).format('YYYY-MM-DD');
        
         */
    }
    
    $('#demoDate').datepicker({
    	format: "yyyy-mm-dd",
    	autoclose: true,
    	todayHighlight: true
    });
    
    if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    
     //document.getElementById("getDate").valueAsDate = new Date(_)

     //document.getElementById('now_date').valueAsDate = new Date();
  
      
    </script>
  </body>
  </html>
