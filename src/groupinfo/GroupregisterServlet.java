package groupinfo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class GroupregisterServlet
 */
@WebServlet("/docs/GroupregisterServlet")
public class GroupregisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		
		String area = request.getParameter("area");	
		
		String group_name= request.getParameter("group_name");
		
		//String users_id= request.getParameter("users_id");

		
		System.out.println(":::"+area);
		System.out.println(":::"+group_name);
		
		
		GroupinfoDAO groupDAO = new GroupinfoDAO();
		Groupinfo gr = new Groupinfo();
		gr.setArea(area);
		gr.setGroup_name(group_name);
		
		groupDAO.register(gr);
		
		
	}

}
