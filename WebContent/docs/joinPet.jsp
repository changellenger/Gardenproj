<%@page import="waterinfo.WaterinfoDAO"%>
<%@page import="petinfo.PetinfoDAO"%>
<%@page import="groupinfo.GroupinfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="users.UsersDAO" %>
<%@ page import="java.io.PrintWriter" %>
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
<jsp:setProperty name="waterinfo" property="users_id" value="<%=users.getUsers_id() %>"/>




 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	
	<%
	System.out.println(petinfo.getGroup_name());
	System.out.println(petinfo.getPlant_name());
	System.out.println(petinfo.getPetplant_name());
	System.out.println(petinfo.getPetplant_wterm());
	if (petinfo.getPlant_name() == null || petinfo.getGroup_name() == null || petinfo.getPetplant_name() == null
	|| petinfo.getPetplant_wterm() == null) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");		
					} else {
					PetinfoDAO g = new PetinfoDAO();
					WaterinfoDAO w = new WaterinfoDAO();
					
					int result = g.register(petinfo);
					
					int result1 = w.register(waterinfo);
				//	g.registerwterm(wterm, pet);
					if(result == -1 || result1 == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('오류가 발생하였습니다.')");
				script.println("history.back()");
				script.println("</script>");	
				}
					else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('식물등록이 완료되었습니다.')");
				script.println("location.href='calendar.jsp'");
				script.println("</script>");
				
				}
					
					}
			%>	
	

</body>
</html>
