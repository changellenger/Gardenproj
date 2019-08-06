<%@page import="groupinfo.GroupinfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="users.UsersDAO" %>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="groupinfo" class="groupinfo.Groupinfo" scope="session" ></jsp:useBean>
<jsp:setProperty name="groupinfo" property="group_name"/>
<jsp:setProperty name="groupinfo" property="h_area1"/>
<jsp:setProperty name="groupinfo" property="h_area2"/>




 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	
	<%
				if (groupinfo.getGroup_name() == null || groupinfo.getH_area1() == null || groupinfo.getH_area2() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");		
					} else {
					GroupinfoDAO g = new GroupinfoDAO();					
					int result = g.register(groupinfo);
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
				script.println("alert('그룹생성이 완료되었습니다.')");
				script.println("location.href='group_register.jsp'");
				script.println("</script>");
				
				}
					
					}
			%>	
	

</body>
</html>
