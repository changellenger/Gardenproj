package notice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/docs/NoticeDetailServlet")
public class NoticeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		String notice_num = request.getParameter("notice_num");			// jsp로 부터 planid 값을 전송받아 string planid에 저장
					// planid를 변수로 가지는 getJSON() 함수를 호출
																// 이후 리턴되는 스트링값을 jsp페이지로 전송
	
	
	
	
		
				// 값을 json타입의 문자로 전송하기 위해 스프링버퍼 이용
							// append 는 스프링 버퍼 뒤쪽에 문자열을 추가하는 함수
		NoticeDAO notDAO = new NoticeDAO();				// CalendarDAO의 search함수를 이용하기 위해 선언
		ArrayList<Notice> noticeList = notDAO.detailSearch(notice_num);//  calDAO.search(planid) 의 값을 calList라는 어레이 리스트에 저장
		
		String html = "";
	
		
		html +="<div class=\"timeline-post\">";	
		html +="<div class=\"content\">";	
		
		   
		   
		
		html +="<h5><a href=\"#\">"+noticeList.get(0).getNotice_con()+"</a></h5>";	
		html +="<p class=\"text-muted\"><small>작성자 :"+noticeList.get(0).getAdmins_num()+" <br/></p>";	
		html +=" <p class=\"text-muted\"><small></small></p>";	
		html +="</div>";	
		html +="</div>";	
		 
		html +="<div class=\"post-content\">";	
		html +=" <p>"+noticeList.get(0).getNoticesub()+"</p>";	
 	   
  
			    
		   
		   
   response.getWriter().write(html);	//jsp 로  success: function(html)
		

	}

}
