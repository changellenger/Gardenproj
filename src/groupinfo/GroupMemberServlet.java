package groupinfo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GroupMemberServlet
 */
@WebServlet("/docs/GroupMemberServlet")
public class GroupMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		
		String group_name= request.getParameter("group_name");
		
		String users_id= request.getParameter("users_id");

		
		System.out.println(":::"+users_id);
		System.out.println(":::"+group_name);
		
		
		GroupinfoDAO groupDAO = new GroupinfoDAO();
	
		groupDAO.registermember(users_id ,group_name);
		
		
		
	}

}
