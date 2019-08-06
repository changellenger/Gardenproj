package calendar;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SpringCalendarGroup
 */
@WebServlet("/docs/SpringCalendarGroupServlet")
public class SpringCalendarGroupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String groupNum = request.getParameter("groupNum");
		
		
		if(groupNum == null) groupNum = "";
		/*
		 * StringBuffer result = new StringBuffer(""); result.append("[");
		 */
		SpringCalendarDAO calDAO = new SpringCalendarDAO();
		ArrayList<SpringCalendar> calList = calDAO.Wdaysearch(groupNum);
		
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		
		System.out.println("date checker _ now "+dateFormat.format(date));
		
		String html ="";
			html +="<div id=\"plant_alert_block\">";
        for(int i=0;i<calList.size();i++){
        
        	if (calList.get(i).getNextwday().equals(dateFormat.format(date))) {	// 지난건 빨간색 당일은 푸른색
        		System.out.println("date checker _ caldate"+calList.get(i).getNextwday());
    	        html += "<div class=\"bs-component\">";
    	        html += 	"<div class=\"alert alert-dismissible alert-warning\">";
    	        html += 		"<button class=\"close\" type=\"button\" data-dismiss=\"alert\">×</button>";
    	        html += 			" <h4>"+ calList.get(i).getPetplantName()+"</h4>";
    	        html += 				"<p>";
    	        html += 					"<a class=\"alert-link\" href=\"#\">물 주기 !</a>";
    	        html += 				"</p>";
    	        html += 		"</div>";
    	        html += 	"</div>";
        		
        	}else {
        		
        		try {
					if(dateFormat.parse(calList.get(i).getNextwday()).compareTo(date)<1) {
						
					 	html += "<div class=\"bs-component\">";
		    	        html += 	"<div class=\"alert alert-dismissible alert-danger\">";
		    	        html += 		"<button class=\"close\" type=\"button\" data-dismiss=\"alert\">×</button>";
		    	        html += 			" <h4>"+ calList.get(i).getPetplantName()+"</h4>";
		    	        html += 				"<p>";
		    	        html += 					"<a class=\"alert-link\" href=\"#\">물 주기 완료?</a>";
		    	        html += 				"</p>";
		    	        html += 		"</div>";
		    	        html += 	"</div>";
						
					}
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
        		
        	}
        	
        	
        	
        }
        html += "</div>";
        response.getWriter().write(html);
    	
	}

}
