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
		String notice_num = request.getParameter("notice_num");			// jsp�� ���� planid ���� ���۹޾� string planid�� ����
					// planid�� ������ ������ getJSON() �Լ��� ȣ��
																// ���� ���ϵǴ� ��Ʈ������ jsp�������� ����
	
	
	
	
		
				// ���� jsonŸ���� ���ڷ� �����ϱ� ���� ���������� �̿�
							// append �� ������ ���� ���ʿ� ���ڿ��� �߰��ϴ� �Լ�
		NoticeDAO notDAO = new NoticeDAO();				// CalendarDAO�� search�Լ��� �̿��ϱ� ���� ����
		ArrayList<Notice> noticeList = notDAO.detailSearch(notice_num);//  calDAO.search(planid) �� ���� calList��� ��� ����Ʈ�� ����
		
		String html = "";
	
		
		html +="<div class=\"timeline-post\">";	
		html +="<div class=\"content\">";	
		
		   
		   
		
		html +="<h5><a href=\"#\">"+noticeList.get(0).getNotice_con()+"</a></h5>";	
		html +="<p class=\"text-muted\"><small>�ۼ��� :"+noticeList.get(0).getAdmins_num()+" <br/></p>";	
		html +=" <p class=\"text-muted\"><small></small></p>";	
		html +="</div>";	
		html +="</div>";	
		 
		html +="<div class=\"post-content\">";	
		html +=" <p>"+noticeList.get(0).getNoticesub()+"</p>";	
 	   
  
			    
		   
		   
   response.getWriter().write(html);	//jsp ��  success: function(html)
		

	}

}
