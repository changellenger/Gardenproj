package users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterGroupselectboxServlet
 */
@WebServlet("/docs/RegisterGroupselectboxServlet")
public class RegisterGroupselectboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String users_id = request.getParameter("users_id");
		
		UsersDAO userDAO = new UsersDAO();
		ArrayList<Users> userList = userDAO.search(users_id);
		String html ="";
		for(int i =0; i<userList.size();i++) {
			
			//html +=		"<a class=\"dropdown-item\" onclick = \"examFunction("+userList.get(i).getGroup_num() +");\">"+userList.get(i).getGroup_name()+"</a>";
			html +=		"<option value=\""+userList.get(i).getGroup_num()+"\">"+userList.get(i).getGroup_name()+"</option>";
		
		}
		
        response.getWriter().write(html);
    	
	
	
	
	}

}
