package calendar;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/docs/SpringCalendarServlet")
public class SpringCalendarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String groupNum = request.getParameter("groupNum");
		response.getWriter().write(getJSON(groupNum));
	
	
	}
	
	public String getJSON(String groupNum) {
		//System.out.println("groupNum: "+ groupNum);
		if(groupNum == null) groupNum = "";
		StringBuffer result = new StringBuffer("");
		result.append("[");
		SpringCalendarDAO calDAO = new SpringCalendarDAO();
		ArrayList<SpringCalendar> calList = calDAO.search(groupNum);
		
		
		for(int i =0; i<calList.size();i++) {
			
			//System.out.println("i : " +i );
			
			result.append("{\"title\": \"" + calList.get(i).getPetplantName()+"\",");
			result.append("\"color\": \"green\",") ;
			result.append("\"description\": \"" + calList.get(i).getUsersName()+" 님이 물을 주셨어요!\",") ;
			result.append("\"textColor\": \"white\",") ; 
			result.append("\"groupnumber\": "+groupNum+",") ; // an option!
			result.append("\"start\": \"" + calList.get(i).getWaterDate()+"\",");
			result.append("\"end\": \"" + calList.get(i).getWaterDate()+"\"},");	   // an option!
			
			
			
		//	result.append("{\"title\": \"" +"물줄날"+ calList.get(i).getPetplantName()+"\",");
		//	result.append("\"start\": \"" + calList.get(i).getNextwday()+"\"},");
		//System.out.println(result.toString());
			
		}
		
		
		result.setLength(result.length() - 1);
		result.append("]");
		
		System.out.println("fin : "+result.toString());
		return result.toString();
		
		
	}
	
	

}
