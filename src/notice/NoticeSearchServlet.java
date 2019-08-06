package notice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/docs/NoticeSearchServlet")
public class NoticeSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		//String notice_con = request.getParameter("notice_con");			// jsp�� ���� planid ���� ���۹޾� string planid�� ����
					// planid�� ������ ������ getJSON() �Լ��� ȣ��
																// ���� ���ϵǴ� ��Ʈ������ jsp�������� ����
	
	
	
	
		
				// ���� jsonŸ���� ���ڷ� �����ϱ� ���� ���������� �̿�
							// append �� ������ ���� ���ʿ� ���ڿ��� �߰��ϴ� �Լ�
		NoticeDAO notDAO = new NoticeDAO();				// CalendarDAO�� search�Լ��� �̿��ϱ� ���� ����
		ArrayList<Notice> noticeList = notDAO.search();//  calDAO.search(planid) �� ���� calList��� ��� ����Ʈ�� ����
		
		   String html ="";
		   
		   html +=" <tbody>";
		   html +="<tr>";
		   html +="<th style=\"background-color: #fafafa; \">";	
		   html +="��ȣ</th>";		
		   html +="<th style=\"background-color: #fafafa; text-align: center;\">";
		   html +="����</th>";	
		   html +="<th style=\"background-color: #fafafa; \">";			
		   html +="�ۼ���</th>";
		   html +="<th style=\"background-color: #fafafa; \">";	
		  		   html +="��ȸ��</th>";	
		  		 
		
		  		   
		   html +="</tr>";
		   
		   //<a href=\"notice_detail.html\">"</a>
		   
		 
		   //for(int i=0;i<noticeList.size();i++){
		   	
		   for(int i=noticeList.size()-1;i>-1;i--) {
			   
			   html +="<tr>";
				html +="<td>"+noticeList.get(i).getNotice_num()+"</td>";	
				html +="<td><a href=\"#\"  onclick=\"clicked("+noticeList.get(i).getNotice_num()+");\">"+noticeList.get(i).getNotice_con()+"</a></td>";						
				html +="<td>"+noticeList.get(i).getAdmins_num()+"</td>";
				html +="<td>"+noticeList.get(i).getNoticeview()+"</td>";
		//		html +="<td>8 mins ago</td>";
				html +="</tr>";
		   }
		   
		   //<a href="notice_detail.jsp?notice_num=<%=noticeList.get(i).getNotice_num()%>">


        
        html += "</tbody>";
        
        response.getWriter().write(html);	//jsp ��  success: function(html)
		
		
        
       // dropgroupsearch('<%=session.getAttribute("s_Id")%>');
		
	
	
	}

}
