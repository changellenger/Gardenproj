<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="users.UsersDAO" %>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>
<jsp:setProperty name="users" property="users_id"/>
<jsp:setProperty name="users" property="users_pw"/>
<jsp:setProperty name="users" property="users_name"/>
<jsp:setProperty name="users" property="users_gender"/>
<jsp:setProperty name="users" property="users_email"/>
<jsp:setProperty name="users" property="users_phone"/>
<jsp:setProperty name="users" property="users_birthday"/>


 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	
	<%
	
		if (users.getUsers_id() == null || users.getUsers_pw() == null || users.getUsers_name() == null
		|| users.getUsers_gender() == null || users.getUsers_email() == null || users.getUsers_phone() == null
		|| users.getUsers_birthday() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");		
		} else {
		UsersDAO usersDAO = new UsersDAO();
		
		int result = usersDAO.register(users);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('오류가 발생하였습니다.')");
			script.println("history.back()");
			script.println("</script>");	
			}
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='registerCheck.jsp'");
			script.println("</script>");
			
			}
		
		}
		

		%>	
	

</body>
</html>
