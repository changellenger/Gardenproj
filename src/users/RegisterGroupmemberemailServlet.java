package users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterGroupmemberemailServlet
 */
@WebServlet("/docs/RegisterGroupmemberemailServlet")
public class RegisterGroupmemberemailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String email = request.getParameter("email");
		
		UsersDAO userDAO = new UsersDAO();
		ArrayList<Users> memberList = userDAO.emailsearch(email);
		
		
		String html ="<table class=\"table table-hover\"style=\"text-align: left; boarder: 1px solid #dddddd\" id =\"searchlisttable\">";
		
		html +="<thead>";
		html +="<tr>";
		html +="<th>회원 명</th>";
		html +="<th>회원 이메일</th>";
		html +="</tr>";
		html +="</thead>";
		html +="	<tbody>";
		
		for(int i =0; i<memberList.size();i++) {
			html +="<tr>";
			html +=		"<th><button class=\"btn btn-primary btn-lg\" type=\"button\" onclick=\"emailmember("+memberList.get(i).getUsers_Number()+")\";>"+memberList.get(i).getUsers_name()+"</th>";
			html +="</button>";
			html +=		"<th>"+memberList.get(i).getUsers_email()+"</th>";
			html +="</tr>";
		}
		    html +="</tbody></table>";
		
        response.getWriter().write(html);
		
	
        
	}

}
