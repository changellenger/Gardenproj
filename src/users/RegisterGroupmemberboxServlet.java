package users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import calendar.SpringCalendar;
import calendar.SpringCalendarDAO;

/**
 * Servlet implementation class RegiserGroupmemberboxServlet
 */
@WebServlet("/docs/RegisterGroupmemberboxServlet")
public class RegisterGroupmemberboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String group_id = request.getParameter("group_id");
		System.out.println(group_id);
		
		UsersDAO userDAO = new UsersDAO();
		ArrayList<Users> memberList = userDAO.selectmember(group_id);
		
		String html ="";
		for(int i =0; i<memberList.size();i++) {
			System.out.println("check :"+i);
			html +=		"<option>"+memberList.get(i).getUsers_name()+"</option>";
			System.out.println(memberList.get(i).getUsers_name());
		}
		
        response.getWriter().write(html);
		
		
		
		
		
        //response.getWriter().write(html);
    	
	
	
	
	}

}
