package users;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class idCheckServlet
 */
@WebServlet("/docs/UserRegisterCheckServlet")
public class UserRegisterCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
      





	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

             // �ѱ� ���� ����

		request.setCharacterEncoding("UTF-8");

		response.setContentType("text/html; charset=UTF-8");



		String users_id = request.getParameter("users_id");

             // �ش� üũ�Լ��� ���� ����� ������ ���� ���� �߰��ؼ� ���ڿ� �߰� ""

             // �ش� ����� 0, 1 ���� ���� ������ ajax���� ��������� �޾Ƽ� ó��

		response.getWriter().write(new UsersDAO().registerCheck(users_id) + ""); 

	}
}
