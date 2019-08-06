package users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SpringCalendarDropdownServlet
 */
@WebServlet("/docs/SpringCalendarDropdownServlet")
public class SpringCalendarDropdownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String users_id = request.getParameter("users_id");
		
		//if(admins_id == null) admins_id = "";
		/*
		 * StringBuffer result = new StringBuffer(""); result.append("[");
		 */
		
		
		UsersDAO userDAO = new UsersDAO();
		ArrayList<Users> userList = userDAO.search(users_id);
		String html ="";
		for(int i =0; i<userList.size();i++) {
			
			html +=		"<a class=\"dropdown-item\" onclick = \"examFunction("+userList.get(i).getGroup_num() +");\">"+userList.get(i).getGroup_name()+"</a>";
		
		}
		
		
		/*
		 * for(int i=1;i<3;i++){ html +=
		 * "<a class=\"dropdown-item\" onclick = \"examFunction(4000"+i+");\">Áý"+i+
		 * "</a>"; }
		 */
        response.getWriter().write(html);
    	
	
	
	
	}

}
