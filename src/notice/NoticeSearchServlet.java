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
		//String notice_con = request.getParameter("notice_con");			// jsp로 부터 planid 값을 전송받아 string planid에 저장
					// planid를 변수로 가지는 getJSON() 함수를 호출
																// 이후 리턴되는 스트링값을 jsp페이지로 전송
	
	
	
	
		
				// 값을 json타입의 문자로 전송하기 위해 스프링버퍼 이용
							// append 는 스프링 버퍼 뒤쪽에 문자열을 추가하는 함수
		NoticeDAO notDAO = new NoticeDAO();				// CalendarDAO의 search함수를 이용하기 위해 선언
		ArrayList<Notice> noticeList = notDAO.search();//  calDAO.search(planid) 의 값을 calList라는 어레이 리스트에 저장
		
		   String html ="";
		   
		   html +=" <tbody>";
		   html +="<tr>";
		   html +="<th style=\"background-color: #fafafa; \">";	
		   html +="번호</th>";		
		   html +="<th style=\"background-color: #fafafa; text-align: center;\">";
		   html +="제목</th>";	
		   html +="<th style=\"background-color: #fafafa; \">";			
		   html +="작성자</th>";
		   html +="<th style=\"background-color: #fafafa; \">";	
		  		   html +="조회수</th>";	
		  		 
		
		  		   
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
        
        response.getWriter().write(html);	//jsp 로  success: function(html)
		
		
        
       // dropgroupsearch('<%=session.getAttribute("s_Id")%>');
		
	
	
	}

}
