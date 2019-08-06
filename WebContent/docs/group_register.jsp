<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="groupinfo" class="groupinfo.Groupinfo" scope="session" ></jsp:useBean>
<jsp:setProperty name="groupinfo" property="group_name"/>
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
        <li><a class="app-menu__item" href="calendar.jsp"><i class="app-menu__icon fa fa-calendar"></i><span class="app-menu__label">스프링 달력</span></a></li>
		<li><a class="app-menu__item" href="diary_search.jsp"><i class="app-menu__icon fa fa-pencil-square-o"></i><span class="app-menu__label">식물일지</span></a></li>
        <li><a class="app-menu__item" href="search.jsp"><i class="app-menu__icon fa fa-search"></i><span class="app-menu__label">식물검색</span></a></li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-user-circle"></i><span class="app-menu__label">마이페이지</span><i class="treeview-indicator fa fa-angle-right"></i></a>
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
		<div>
			<h1>
				<i class="fa fa-edit"></i> 그룹 생성 
			</h1>
			
		</div>
		
	</div>
	<div class="row">
		<div class="col-md-10">
			<div class="tile">
				<h3 class="tile-title"></h3>
				<div class="tile-body">
					

					<!-- css 파일 분리 -->

					<!-- <link href='../../css/join_style.css' rel='stylesheet' style='text/css' /> -->
					<script type="text/javascript">
						// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
						function checkGroupValue() {
							if (!document.groupinfo.group_name.value) {
								alert("그룹이름을 입력하세요.");
								return false;
							}

							if (document.groupinfo.h_area1.value == '0' || document.groupinfo.h_area2.value == '0' ){
								alert("지역정보를 선택하세요.");
								return false;
							}

						}
					</script>

					</head>
					<body>
						<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
						<div id="wrap">
						
							<b><font size="5" color="black">그룹생성/수정</font></b> <br>
							
							
							<br>
							<br>


							<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
							<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
							<!-- 지은/userinfo에서 groupinfo로 변경 -->
							<!-- <form method="post" action="../docs/joinGroup.jsp" name="groupinfo"	onsubmit="return checkGroupValue()"> -->
								<div class="form-group row">
									<div class="col-md-6">
										<label class="control-label col-md-4">그룹명
										<input class="form-control" id="textboxvalue" name="group_name" maxlength="20" placeholder="그룹명은 20자이하">
										</label> 
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-12">
										<label class="control-label col-md-4">지역</label><br>
										<div style="display: flex;" class="col-md-6" id="location">
												<select style="display: auto;" class="form-control"	id="h_area1" >
													<option value='0'>-선택-</option>

													<option value='1'>서울</option>

													<option value='2'>부산</option>

													<option value='3'>대구</option>

													<option value='4'>인천</option>

													<option value='5'>광주</option>

													<option value='6'>대전</option>

													<option value='7'>울산</option>

													<option value='8'>강원</option>

													<option value='9'>경기</option>

													<option value='10'>경남</option>

													<option value='11'>경북</option>

													<option value='12'>전남</option>

													<option value='13'>전북</option>

													<option value='14'>제주</option>

													<option value='15'>충남</option>

													<option value='16'>충북</option>

												</select> 
												
												<br>
												

												<script type="text/javascript">
													var cat1_num = new Array(1,
															2, 3, 4, 5, 6, 7,
															8, 9, 10, 11, 12,
															13, 14, 15, 16);

													var cat1_name = new Array(
															'서울', '부산', '대구',
															'인천', '광주', '대전',
															'울산', '강원', '경기',
															'경남', '경북', '전남',
															'전북', '제주', '충남',
															'충북');

													
													
													function groupmaker(){		//그룹생성
														
														var h1indx =$("#h_area1 option:selected").val();
														
														h1indx *= 1;
														h1indx -= 1;
														
														console.log( "h1 :"+ cat1_name[h1indx]);
														console.log( "text : "+ $('#textboxvalue').val());
														
															var urlgroup = 'GroupregisterServlet';
															$.ajax({
															    type: 'POST',
															    url: urlgroup,
															    data:{
															    	"area":cat1_name[h1indx],
															    	"group_name": $('#textboxvalue').val()
															    	
															    	
																	},
															    success: function()
															      {			
															    	$.ajax({
																	    type: 'POST',
																	    url: 'GroupMemberServlet',
																	    data :{
																		"users_id" : "<%=session.getAttribute("s_Id")%>",
																		"group_name" :  $('#textboxvalue').val()
																	    },
																	    success: function()
																	      {	
																	    	
																	    	groupselectbox();
																	    	
																	       }
																	     });
															    	
															       }
															     });
														
														
														//console.log( "h2 :"+ cat2_name[($("#h_area2 option:selected").val())+1]);
														//$("#h_area2 option:selected").val();
														// "users_id" : "<%=session.getAttribute("s_Id")%>" ,
														
														
													}

												</script>
										</div>

						</div>
				</div>



				<div class="clearix"></div>


				<div class="tile-body">
					<label class="control-label col-md-4">멤버는 추가 없이 그룹 형성이 가능하며, <br> 추후에도 언제든지 멤버 추가가 가능합니다.<br></label> 
					
					<br>
				</div>

				<div class="col-md-6">
				
				
					<div class="button">
						<button class="btn btn-primary btn-lg" type="submit" onclick="groupmaker();">그룹생성</button>
					</div>
					
					
				</div>
				<br>

				<div class="form-group">
					<label class="control-label col-md-4">그룹 리스트</label>
					<div class="col-md-6">
						<select class="form-control" name ="groupSelect" id="groupSelect" multiple="" >
						
						</select>
						<br>
						<button class="btn btn-primary btn-lg" id='btn-select-group'>맴버 수정</button>
						
					</div>
				</div>
				
				
				<div id="member_modi">
				<br>
				<h2>멤버추가/삭제</h2>
				<br>
				<div class="form-group row">
					<div class="col-md-12">
						<label class="control-label col-md-4">멤버검색(이메일)</label><br>
						<!-- Load icon library -->
						<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

						<!-- The form -->
						<div class="col-md-6">
							<form style="display: flex;" class="example" action="action_page.php">
								<input style="display: auto;" type="text" id="searchemail" placeholder="spring@spring.com" name="search" class="form-control">
								<button class="btn btn-primary" id="emailbutton" type="button">
									<i class="fa fa-fw fa-lg fa-search"></i>
								</button>
							</form>
						</div>
						
					</div>
				</div>
				<br>

				<div class="form-group">
					<label class="control-label col-md-4">멤버리스트</label>
					<div class="col-md-6">
						<div>
							<select class="form-control" id="memberSelect" multiple="">
								
							</select>
						</div>
					</div>
				</div>

								<div id="fullCalModal" class="modal fade">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h4 id="modalTitle" class="modal-title">맴버 목록</h4>
												<button type="button" class="close" data-dismiss="modal">
													<span aria-hidden="true">×</span><span class="sr-only">close</span>
												</button>
											</div>

											<div id="modalBody" class="modal-body">
										
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-dismiss="modal">확인</button>
												<!--   <button class="btn btn-primary"><a id="eventUrl" target="_blank">확인</a></button> -->
											</div>
										</div>
									</div>
								</div>


								<br>
				<div class="col-md-6">
					
				</div>
			
				</div>
				
				
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
	
	
	
	
	
	
	$(function(){		//맴버 수정 버튼 
		$('#btn-select-group').click(function() {
			var target = document.getElementById("groupSelect");
			
			$.ajax({

				type: "POST",
				url: "RegisterGroupmemberboxServlet",
				data:{
					"group_id" : target.options[target.selectedIndex].value
					},
			   success: function(html)
		      {	
				   
		    	 $('#memberSelect').html(html);
		       }
					
			});
									
		});
	});
	
	$(function(){		//맴버등록하기
		$('#emailbutton').click(function() {
			$.ajax({
				
				type: 'POST',
				url: 'RegisterGroupmemberemailServlet',
				data:{
					"email" : $('#searchemail').val()
					},
					 success: function(html)
				      {	
						   
						//	$('#modalTitle').html(event.title);		
							$('#modalBody').html(html);                                          		                       
						    $('#fullCalModal').modal();
						    
				       }
				
			})
			
		});
	});
		
	
/* 	
	$(function(){		//맴버등록하기
		$('#emailbutton').click(function() {
			
			$.ajax({

				type: 'POST',
				url: 'RegisterGroupmemberemailServlet',
				data:{
					"email" : $('#searchemail').val()
					},
			   success: function(html)
		      {	
				   
		    	 $('#memberSelect').html(html);
		       }
					
			});
									
		});
	}); */
	

	
	function emailmember(users_num){
		var target = document.getElementById("groupSelect");
		var group_num =target.options[target.selectedIndex].value
		$.ajax({
		    type: 'POST',
		    url: 'RegisterGroupmemberlistbuttonServlet',
		    data :{
			"users_num" : users_num,
			"group_num" : group_num
		    },
		    success: function()
		      {	
		    	
		    	$.ajax({

					type: "POST",
					url: "RegisterGroupmemberboxServlet",
					data:{
						"group_id" : target.options[target.selectedIndex].value
						},
				   success: function(html)
			      {	
					   
			    	 $('#memberSelect').html(html);
			       }
						
				});	
		    	
		       }
		     });
		
		
	}
	
	
	
	
	function checker(){
		
		alert('Run');
	}
	
 	function groupselectbox(){
		
		$.ajax({
			
			type: "POST",
			url: "RegisterGroupselectboxServlet",
			data:{
				
				"users_id" : "<%=session.getAttribute("s_Id")%>"
				
				},
		
		  success: function(html)
	      {	
	    	 $('#groupSelect').html(html);
	       }

			})

		} 
<%-- 	
	function memberselectbox(){
		
		$.ajax({
			
			type: "POST",
			url: "RegisterGroupmemberboxServlet",
			data:{
				
				//"petplant_num" : petplant_num,
				"users_id" : "<%=session.getAttribute("s_Id")%>"
				//"waterdate" : waterdate
				},
		
		  success: function(html)
	      {	
	    	 $('#groupSelect').append(html);
	       }

			})

		} --%>
		
		
	
	 document.addEventListener('DOMContentLoaded', function() {

		 groupselectbox();
	
	
	
	 });
	</script>

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