<%@page import="updatedusers.UpdatedUsers"%>
<%@page import="groupinfo.GroupinfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="updatedusers.UpdatedUsersDAO" %>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="updatedusers" class="updatedusers.UpdatedUsers" scope="session" ></jsp:useBean>
<jsp:useBean id="users" class="users.Users" scope="session" ></jsp:useBean>



<jsp:setProperty name="updatedusers" property="users_npw"/>
<jsp:setProperty name="updatedusers" property="users_nname"/>
<jsp:setProperty name="updatedusers" property="users_nemail"/>
<jsp:setProperty name="updatedusers" property="users_nphone"/>
<jsp:setProperty name="updatedusers" property="users_id" value="<%=users.getUsers_id() %>"/>

 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	
	<%
				if (updatedusers.getUsers_npw() == null || updatedusers.getUsers_nname() == null || updatedusers.getUsers_nphone() == null
				|| updatedusers.getUsers_nemail()==null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");		
					} else {
						
					UpdatedUsersDAO g = new UpdatedUsersDAO();					
					int result = g.update(updatedusers);
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
				script.println("alert('회원정보가 수정되었습니다.')");
				script.println("location.href='user_info.jsp'");
				script.println("</script>");
				
				}
					
					}
			%>	
	

</body>
</html>
