
<%@page import="users.Users"%>
<%@page import="users.UsersDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
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
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login - Vali Admin</title>
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

    </header>

    
      <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <ul class="app-menu">
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-bullhorn"></i><span class="app-menu__label">공지사항/Q&A</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="notice_spring.jsp" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i> 공지사항</a></li>
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
              
              <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
          <script type="text/javascript">
             // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
              function checkValue()
              {
                if(!document.users.users_id.value){
                  alert("아이디를 입력하세요.");
                  return false;                                                                                       
                }
                if(!document.users.users_pw.value){
                  alert("비밀번호를 입력하세요.");
                  return false;
                }
            
                // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
                if(document.users.users_pw.value != document.users.users_pwcheck.value ){
                    alert("비밀번호를 동일하게 입력하세요.");
                  return false;
                }
                
                
                if(!document.users.users_name.value){
                    alert("이름를 입력하세요.");
                  return false;
                }
                if(!document.users.agreement.checked){
                    alert("동의를 하지않으시면 가입하실수없습니다");
                  return false;
                }
               }
             
              function registerCheckFunction(){

          		// userID 변수에 userID의 입력된 값을 가져오게 함

          		var users_id = $('#users_id').val();
					
          		$.ajax({

          			type: 'POST',  // GET or POST 전송방법 

          			url: 'UserRegisterCheckServlet',  // 이쪽으로 보낸다(호출URL)

          			data: {"users_id": users_id},  // userID 이름에 userID 데이터 값을 넣어서 보낸다

          			success: function(result){  // 만약 성공적으로 수행되었다면 result로 값반환

          				if(result == 1){  // id가 checkMessage인 것에 아래 텍스트 출력

          					$('#checkMessage').html('사용할 수 <strong>있는</strong> 아이디입니다 :)');


          				} else {

          					$('#checkMessage').html('사용할 수 <strong>없는</strong> 아이디입니다 :(');


          				}

          				// id 가 checkModal인 모달함수 실행시켜서 모달 실행시키기 위해

          				$('#checkModal').modal("show");

          			} 

          		})

          	}
                     
        </script>
    
    </head>
    <body>
    <!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
    <div id="wrap">
        <br><br>
        <b><font size="5" color="black">회원가입</font></b>
        <br><br><br>
        
 
        <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
        <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
       <form method="post" action="../docs/join.jsp" name="users" onsubmit="return checkValue()">
           <div class="form-group row">
              <label class="control-label col-md-2">아이디</label>
                <div class="col-md-6">
                    <input type = "text" id="users_id" class="form-control"  name="users_id" maxlength="20" placeholder="20글자 이내의 아이디를 입력하세요">
                    
                  </div>
                  <div class="col-md-2">
                  		<button onclick="registerCheckFunction();" class="btn btn-primary" type="button">중복확인</button>
                      <!--  <input type= "button" id="button1" class="btn btn-default btn-sm" value="중복확인">  -->  
              </div>
      </div>
      
 
              <div class="modal" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog" >
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">확인메시지</h5>
                      <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                     <div class="modal-body" id="checkMessage"></div>
                    </div>
                    <div class="modal-footer">
                      <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                               </div>
                  </div>
                </div>
              </div>
            </div>

      
      <!--  <div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">

    <div class="vertical-alignment-helper">

	<div class="modal-dialog vertical-align-center">

		패널 출력 성공 메시지냐 오류 메시지에 따라 
			<div class="modal-content panel-info">

				<div class="modal-header panel-heading">

					<button type="button" class="close" data-dismiss="modal">

						<span aria-hidden="true">&times;</span>

						<span class="sr-only">Close</span>

					</button>

					<h4 class="modal-title">

						확인 메시지

					</h4>

					<div class="modal-body" id="checkMessage">

					</div>

					<div class="modal-footer">

					<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>

					</div>

				</div>

			</div>

		</div>
	</div>

</div> -->
      
                <div class="form-group row">
                    <label class="control-label col-md-2">비밀번호</label>
                      <div class="col-md-6">
                          <input class="form-control" type="password" name="users_pw" maxlength="50" placeholder="비밀번호를 입력하세요">
                        </div>
                </div>
                
                <div class="form-group row">
                    <label class="control-label col-md-2">비밀번호 확인</label>
                      <div class="col-md-6">
                          <input class="form-control" type="password" name="users_pwcheck" maxlength="50" placeholder="위와 동일한 비밀번호를 입력하세요">
                      </div>
                </div>
                    
                <div class="form-group row">
                    <label class="control-label col-md-2">이름(닉네임)</label>
                      <div class="col-md-6">
                          <input class="form-control" type="text" name="users_name" maxlength="50"  placeholder="Spring에서 이용할 이름(닉네임)을 입력하세요" charset="utf-8">
                      </div>
                </div>
                    
                <div class="form-group row">
                    <label class="control-label col-md-2">성별</label>
                    <div class="col-md-6">
                    <td>
                        <input type="radio" name="users_gender" value="man" checked>남
                        <input type="radio" name="users_gender" value="woman" checked>여
                    </td>
                  </div>
                </tr>
              </div>
                    
                <div class="form-group row">
                    <label class="control-label col-md-2">생일</label>
                    
                    <div class="col-md-6">
                    	<input class="form-control" id="demoDate" name = "users_birthday" type="text" placeholder="Select Date">



                    </div>
                    </div>
                <div class="form-group row">
                    <label class="control-label col-md-2">이메일</label>
                    <div class="col-md-6">
                    <td style="width:100%">
                        <input class="form-control" type="text" name="users_email" maxlength="50" placeholder="Email@">
                      
                        </select>
                    </td>
                  </div>
                </div>
                    
                <div class="form-group row">
                    <label class="control-label col-md-2">휴대전화</label>

                    <div class="col-md-6">
                        <input input class="form-control" type="number" name="users_phone" maxlength="11" placeholder="-빼고 입력해주세요">
                    </div>
                </div>
             
             
            </div>
            <br>
                <div class="form-group row">
                  <div class="col-md-8 col-md-offset-3">
                    <div class="form-check">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="agreement">I accept the terms and conditions
                      </label>
                    </div>
                  </div>
                </div>
            <br>
            <button class="btn btn-primary" type="submit" value="가입" ><i class="fa fa-fw fa-lg fa-check-circle"></i>회원가입</button>&nbsp;&nbsp;&nbsp; <a class="btn btn-secondary" href="#" value="취소"><i class="fa fa-fw fa-lg fa-times-circle"></i>취소</a>
	
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
      <script type="text/javascript">
        if(document.location.hostname == 'pratikborsadiya.in') {
        	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        	ga('create', 'UA-72504830-1', 'auto');
        	ga('send', 'pageview');
        }
        
        $('#demoDate').datepicker({
          	format: "yyyy-mm-dd",
          	autoclose: true,
          	todayHighlight: true
          });

      </script>
    </script>
  </body>
</html>