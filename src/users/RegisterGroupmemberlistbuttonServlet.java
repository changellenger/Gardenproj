package users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import groupinfo.GroupinfoDAO;

/**
 * Servlet implementation class RegisterGroupmemberlistbuttonServlet
 */
@WebServlet("/docs/RegisterGroupmemberlistbuttonServlet")
public class RegisterGroupmemberlistbuttonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String users_num = request.getParameter("users_num");
		String group_num = request.getParameter("group_num");
		
		System.out.println("users_num : "+ users_num);
		System.out.println("group_num : "+ group_num);
		

		GroupinfoDAO groupDAO = new GroupinfoDAO();
	
		groupDAO.registermemberGID(users_num ,group_num);
		
		
		
		
	}

}
