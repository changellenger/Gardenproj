package memo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/docs/MemoDetailServlet")
public class MemoDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
		
		MemoDAO memoDAO = new MemoDAO();				
		ArrayList<Memo> memoList = memoDAO.search();
		
	   String html ="";
	
	   html +="<h3 class=\"tile-title\">Memo</h3> ";
			html +="<div class=\"messanger\">";
			html +="<div class=\"messages\" style=\"max-height: 665px;\">";
		
		for (int i=0;i<memoList.size();i++) {
				
		
				html +="<p class=\"text-muted\"> ";
				html +="<small><br>"+memoList.get(i).getMemoTime()+"</small><br></p>";
				html +="<div class=\"message\"><br>";
			
				html +="<img src=\"https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg\">";		
				html +="<br><p class=\"info\">"+memoList.get(i).getMemoCon()+"</p><br>";	

					html +="</div>";
	}

		  html +="</div>";

		  html +="<div class=\"sender\">";
		  html +="<input type=\"text\" id=\"memo_cont\" placeholder=\"Write your story.\"/>";
		  html +="	<button class=\"btn btn-primary\" value=\"�쟾�넚\" onclick=\"check();\">";
		  html +="<i class=\"fa fa-lg fa-fw fa-paper-plane\"></i>";
		  html +="</button>";
	

		  response.getWriter().write(html);	//

	}

}
