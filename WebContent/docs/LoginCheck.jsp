<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
<jsp:setProperty name="users" property="users_id"/>
<%
	request.setCharacterEncoding("utf-8");


	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	try {

		String url = "jdbc:mysql://localhost:3306/garden_db?" + 
						"useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String pw = "54321";
		conn = DriverManager.getConnection(url, user, pw);
		
		if (conn != null) {
			String CUS_ID = request.getParameter("users_id"); //login 페이지  입력 정보
			String CUS_PASSWORD = request.getParameter("password");
			
			String sql = "Select users_id, users_pw from users where users_id = '" + CUS_ID + "'";
			
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			String CheckID = null;
			String CheckPW = null;

			String managerID = "manager";
			String managerPW = "1111";
		
			
			if(rs.next()){
			    rs.previous();
		
			while (rs.next()) {
				CheckID = rs.getString("users_id");
				CheckPW = rs.getString("users_pw");

				if (CUS_ID.equals(CheckID) && CUS_PASSWORD.equals(CheckPW)) {
					if (CUS_ID.equals(managerID) && CUS_PASSWORD.equals(managerPW)) {
						session.setAttribute("s_Id", CUS_ID);
						// 메니저 페이지%>
						<jsp:forward page="calendar.jsp" />
						<%
	} else {
						session.setAttribute("s_Id", CUS_ID);
						%>
						<jsp:forward page="calendar.jsp" />
						<%
	}
				}

				else {
						%>
						<script>
							alert("아이디와 비밀번호를 확인해주세요");
							location.href = "login.jsp";
						</script>
						<%
				}
			}
			}else{
				%>
				<script>
					alert("아이디와 비밀번호를 확인해주세요");
					location.href = "login.jsp";
				</script>
				<%
			}
		}

	} finally {
		//처리해야할 공통 코드
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {

			}
		}

		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {

			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {

			}
		}

	}
%>