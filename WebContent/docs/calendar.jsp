<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    	
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
<jsp:setProperty name="users" property="users_id"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="description"
	content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
	
	
<!--  fullcalendar lib -->	
	<link href='fullc/3.10.0/fullcalendar.min.css' rel='stylesheet' />
<link href='fullc/3.10.0/fullcalendar.print.min.css' rel='stylesheet' media='print' />

	

	
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
    <header class="app-header"><a class="app-header__logo" href="calendar.jsp">Spring</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">

        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="user_info.jsp"><i class="fa fa-user fa-lg"></i> Profile</a></li>
            <li><a class="dropdown-item" href="login.jsp"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </header>
    
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <ul class="app-menu">
        <li><a class="app-menu__item active" href="calendar.jsp"><i class="app-menu__icon fa fa-calendar"></i><span class="app-menu__label">스프링 달력</span></a></li>
		<li><a class="app-menu__item" href="diary_search.jsp"><i class="app-menu__icon fa fa-pencil-square-o"></i><span class="app-menu__label">식물일지</span></a></li>
        <li><a class="app-menu__item" href="search.jsp"><i class="app-menu__icon fa fa-search"></i><span class="app-menu__label">식물검색</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-user-circle"></i><span class="app-menu__label">마이페이지</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="group_register.jsp"><i class="icon fa fa-users"></i> 그룹관리</a></li>
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
				<i class="fa fa-calendar"></i> Calendar
			</h1>
			<p>Full Calander page for managing events</p>
		</div>
		<ul class="app-breadcrumb breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
			<li class="breadcrumb-item"><a href="#">Calendar</a></li>
		</ul>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="tile row">
				<div class="col-md-3">
					<div id="external-events">
						<div align="right">
						
					
							
												<div class="btn-group" role="group"	aria-label="Button group with nested dropdown">
													<button class="btn btn-primary" type="button">그룹명</button>
													<div class="btn-group" role="group">
														<button class="btn btn-primary dropdown-toggle"
															id="btnGroupDrop1" type="button" data-toggle="dropdown"
															aria-haspopup="true" aria-expanded="false"></button>
														<div class="dropdown-menu dropdown-menu-right" id = "dropdownlist_a" x-placement="bottom-end"
															style="position: absolute; transform: translate3d(36px, 36px, 0px); top: 0px; left: 0px; will-change: transform;">
															
														</div>
													</div>
												</div>
							
						
						
						</div>
						<h2></h2>
						
						<div class = "plant_alert" id = "plant_alert">
							<div id="plant_alert_block">
							
										<!--  알람 버튼 활성화  -->
						   </div>         
						</div>
					</div>
					</div>
				<div class="col-md-9">
					<div id="calendar" class="fc fc-bootstrap4 fc-ltr"></div>
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



		    
<!-- 	<script type="text/javascript" src="js/plugins/moment.min.js"></script>
	<script type="text/javascript" src="js/plugins/jquery-ui.custom.min.js"></script>
	<script type="text/javascript" src="js/plugins/fullcalendar.min.js"></script>  -->
	    
 <!--      <link href='fullc/3.10.0/fullcalendar.min.css' rel='stylesheet' />
<link href='fullc/3.10.0/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='fullc/3.10.0/lib/moment.min.js'></script>
<script src='fullc/3.10.0/lib/jquery.min.js'></script>
<script src='fullc/3.10.0/fullcalendar.min.js'></script>  -->

    <!-- 
    <script type="text/javascript" src="fullc/3.10.0/fullcalendar.min.js"></script>
    <script type="text/javascript" src="fullc/3.10.0/lib/jquery-ui.min.js"></script>
    <script type="text/javascript" src="fullc/3.10.0/lib/jquery.min.js"></script>
 	<script type="text/javascript" src="fullc/3.10.0/lib/moment.min.js"></script> 
     
      -->
     
	<!-- 이벤트 클릭시 알람창  modal  -->
	<div id="fullCalModal" class="modal fade">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	              <h4 id="modalTitle" class="modal-title"></h4>
	                <button type="button" class="close" data-dismiss="modal">
	                <span aria-hidden="true">×</span><span class="sr-only">close</span></button>
	            </div>
	            
	            <div id="modalBody" class="modal-body">
	            	<div id="modalBody_cont" >
	            									 <!--  물주기 펑션 추가해야함 -->
	            	</div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
	              <!--   <button class="btn btn-primary"><a id="eventUrl" target="_blank">확인</a></button> -->
	            </div>
	        </div>
	    </div>
	</div>
<script src='fullc/3.10.0/lib/moment.min.js'></script>
<!-- <script src='fullc/3.10.0/lib/jquery.min.js'></script> -->
<script src='fullc/3.10.0/fullcalendar.min.js'></script>
	

	<script type="text/javascript">
	
	Date.prototype.yyyymmdd = function() {
		  var mm = this.getMonth() + 1; // getMonth() is zero-based
		  var dd = this.getDate();

		  return [this.getFullYear(),
			  
		          (mm>9 ? '' : '0') + mm,
		          (dd>9 ? '' : '0') + dd
		         ].join('');
		};

	
	
	function check(){
		
		alert('무럭무럭자라라!')
		
	}
	//물주기 
	
	function givewater(petplant_num,formattedDate, groupnumber){
		
		
		
		console.log("petNum : " + petplant_num);
		console.log("formattedDate givewater : " + formattedDate);
		$.ajax({
			
			type: "POST",
			url: "SpringCalendarGivewaterServlet",
			data:{
				
				"petplant_num" : petplant_num,
				"users_id" : "<%=session.getAttribute("s_Id")%>",
				"waterdate" : formattedDate
				
			},	
			success:function(){
								
				check();
				
				//examFunction();  그룹명
				examFunction(groupnumber);
			}
							
			
		})
		
	}
	
	

	//드롭다운 그룹 리스트 생성
	
	 function dropgroupsearch(users_id){
		 
			
		var urldown = "SpringCalendarDropdownServlet?users_id="+users_id;
	
		$.ajax({
		    type: "POST",
		    url: urldown,
		    success: function(html)
		      {	
		    	 $('#dropdownlist_a').append(html);
		       }
		     });
	} 

	
	function wdatemaker(groupNum){
		var urldata = "SpringCalendarWdateServlet?groupNum="+groupNum;
		$.ajax({
		    type: "POST",
		    url: urldata,
		    dataType: 'json',
		    success: function(events)
		      {	
			         
		              $('#calendar').fullCalendar('addEventSource',events); 
		             
		       }
		
		     });
			
	
	}
	//그룹 리스트 클릭
	function examFunction(groupNum){
			AlertboxMaker(groupNum);
			var urldata = "SpringCalendarServlet?groupNum="+groupNum;
		$.ajax({
		    type: "POST",
		    url: urldata,
		    dataType: 'json',
		    success: function(events)
		      {	
			          $('#calendar').fullCalendar('removeEvents');
		              $('#calendar').fullCalendar('addEventSource',events); 
		              $('#calendar').fullCalendar('rerenderEvents' );
		              
		              wdatemaker(groupNum);
		       }
		
		     });
				
		
		}
	
	
	
	
	// 알람박스 생성
	function AlertboxMaker(groupNum,today){
		var urlgroup = "SpringCalendarGroupServlet?groupNum="+groupNum;
		$.ajax({
		    type: "POST",
		    url: urlgroup,
		    success: function(html)
		      {	 
		    	$('#plant_alert_block').remove();
		    	 $('#plant_alert').append(html);
		       }
		     });
	}

	
    document.addEventListener('DOMContentLoaded', function() {
    	
    	dropgroupsearch('<%=session.getAttribute("s_Id")%>');
    	   	
     	$('#external-events .fc-event').each(function() {
     	      
      		 // store data so the calendar knows to render an event upon drop
      		$(this).data('event', {
      			title: $.trim($(this).text()), // use the element's text as the event title
      			stick: true // maintain when user navigates (see docs on the renderEvent method)
      		});
      
      		// make the event draggable using jQuery UI
      		$(this).draggable({
      			zIndex: 999,
      			revert: true,      // will cause the event to go back to its
      			revertDuration: 0  //  original position after the drag
      		});
      
       	});
      
      	$('#calendar').fullCalendar({
      		header: {
      			left: 'prev,next today',
      			center: 'title',
      			right: 'month myCustomButton'
      		},
      		eventClick:  function(event, jsEvent, view) {
      			var d = new Date(event.start);
      			var t = new Date();
      			console.log(d.toDateString());
      			console.log(t.toDateString());
      			
      			$('#modalTitle').html(event.title);		
      			      			
      			if(event.color != "green"){ // 워터 테이블에 없는 데이터
      				
					var petplantnum = event.description;
                 	
                 	var Wdate = new Date(event.start);
             		var formattedDate = moment(Wdate).format('YYYY-MM-DD');
             		
             		console.log(d.toDateString() == t.toDateString())
             		
             		if(d.toDateString() == t.toDateString() ){
                 	
             			$('#modalBody').html("<button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\"  onclick=\"givewater("+petplantnum+","+event.start+","+event.groupnumber+");\" >물 주기!</button>");
             		
             		
             		}else if(event.start > new Date()){ // 물주기 예정일 입니다! 		
             				
                    	 $('#modalBody').html(event.title+"에게 물을 줄 날입니다");
             		}else{
             			             			
             			$('#modalBody').html("<button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\"  onclick=\"givewater("+petplantnum+","+event.start+","+event.groupnumber+");\" >물 주기!</button>");
             		}
             		
      				
      			}else{						//워터 테이블에 있는 이미 물 준 데이터		                	 	
                        $('#modalBody').html(event.description);                                          		                       
      				
      			}
               $('#fullCalModal').modal();
            },
            
          /*     eventRender: function(event, element) {
                element.qtip({
                  content: event.description
                });
              }
            ,   */
             
             
  /*            eventRender: function(eventObj, $el) {
                $el.popover({
                  title: eventObj.title,
                  content: eventObj.description,
                  trigger: 'hover',
                  placement: 'top',
                  container: 'body'
                });
              },  */
            
      		editable: true,
      		//droppable: true, // this allows things to be dropped onto the calendar
      		/* drop: function() {
      			// is the "remove after drop" checkbox checked?
      			if ($('#drop-remove').is(':checked')) {
      				// if so, remove the element from the "Draggable Events" list
      				$(this).remove();
      			}
      		} */
   
     	});//full
        
      });//addEventListener
    </script>
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