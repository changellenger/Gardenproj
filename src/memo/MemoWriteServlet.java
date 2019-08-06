package memo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemoWriteServlet
 */
@WebServlet("/docs/MemoWriteServlet")
public class MemoWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset = UTF-8");
	
		
		String memo_cont = request.getParameter("memo_cont");	
		System.out.println(memo_cont);
		
		MemoDAO memoDAO = new MemoDAO();	
		Memo mo = new Memo();
		mo.setMemoCon(memo_cont);
		memoDAO.register(mo);
		
	}

}
