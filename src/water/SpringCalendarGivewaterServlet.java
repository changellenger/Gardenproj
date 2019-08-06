package water;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class SpringCalendarGivewater
 */
@WebServlet("/docs/SpringCalendarGivewaterServlet")
public class SpringCalendarGivewaterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		
		String petplant_num = request.getParameter("petplant_num");	
		
		String users_id= request.getParameter("users_id");

		String waterdate= request.getParameter("waterdate");
		
		System.out.println(":::"+petplant_num);
		System.out.println(":::"+users_id);
		System.out.println(":::"+waterdate);
		
		
		WaterDAO waterDAO = new WaterDAO();
		
		
		waterDAO.givewater(petplant_num,users_id,waterdate);
		
		
		
	}

}
